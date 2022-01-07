
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int possible_crtcs; } ;
struct drm_writeback_connector {int base; TYPE_2__ encoder; } ;
struct komeda_wb_connector {TYPE_3__* wb_layer; struct drm_writeback_connector base; } ;
struct TYPE_8__ {struct komeda_dev* dev_private; } ;
struct komeda_kms_dev {TYPE_4__ base; } ;
struct komeda_dev {int fmt_tbl; } ;
struct komeda_crtc {struct komeda_wb_connector* wb_conn; int base; TYPE_1__* master; } ;
struct TYPE_7__ {int layer_type; } ;
struct TYPE_5__ {TYPE_3__* wb_layer; } ;


 int BIT (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_connector_helper_add (int *,int *) ;
 int drm_crtc_index (int *) ;
 int drm_writeback_connector_init (TYPE_4__*,struct drm_writeback_connector*,int *,int *,int *,int ) ;
 int kfree (struct komeda_wb_connector*) ;
 int * komeda_get_layer_fourcc_list (int *,int ,int *) ;
 int komeda_put_fourcc_list (int *) ;
 int komeda_wb_conn_helper_funcs ;
 int komeda_wb_connector_funcs ;
 int komeda_wb_encoder_helper_funcs ;
 struct komeda_wb_connector* kzalloc (int,int ) ;

__attribute__((used)) static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
       struct komeda_crtc *kcrtc)
{
 struct komeda_dev *mdev = kms->base.dev_private;
 struct komeda_wb_connector *kwb_conn;
 struct drm_writeback_connector *wb_conn;
 u32 *formats, n_formats = 0;
 int err;

 if (!kcrtc->master->wb_layer)
  return 0;

 kwb_conn = kzalloc(sizeof(*kwb_conn), GFP_KERNEL);
 if (!kwb_conn)
  return -ENOMEM;

 kwb_conn->wb_layer = kcrtc->master->wb_layer;

 wb_conn = &kwb_conn->base;
 wb_conn->encoder.possible_crtcs = BIT(drm_crtc_index(&kcrtc->base));

 formats = komeda_get_layer_fourcc_list(&mdev->fmt_tbl,
            kwb_conn->wb_layer->layer_type,
            &n_formats);

 err = drm_writeback_connector_init(&kms->base, wb_conn,
        &komeda_wb_connector_funcs,
        &komeda_wb_encoder_helper_funcs,
        formats, n_formats);
 komeda_put_fourcc_list(formats);
 if (err) {
  kfree(kwb_conn);
  return err;
 }

 drm_connector_helper_add(&wb_conn->base, &komeda_wb_conn_helper_funcs);

 kcrtc->wb_conn = kwb_conn;

 return 0;
}
