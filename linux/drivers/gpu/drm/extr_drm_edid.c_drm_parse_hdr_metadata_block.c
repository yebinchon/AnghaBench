
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int min_cll; int max_fall; int max_cll; int metadata_type; int eotf; } ;
struct TYPE_4__ {TYPE_1__ hdmi_type1; } ;
struct drm_connector {TYPE_2__ hdr_sink_metadata; } ;


 int cea_db_payload_len (int const*) ;
 int eotf_supported (int const*) ;
 int hdr_metadata_type (int const*) ;

__attribute__((used)) static void
drm_parse_hdr_metadata_block(struct drm_connector *connector, const u8 *db)
{
 u16 len;

 len = cea_db_payload_len(db);

 connector->hdr_sink_metadata.hdmi_type1.eotf =
      eotf_supported(db);
 connector->hdr_sink_metadata.hdmi_type1.metadata_type =
      hdr_metadata_type(db);

 if (len >= 4)
  connector->hdr_sink_metadata.hdmi_type1.max_cll = db[4];
 if (len >= 5)
  connector->hdr_sink_metadata.hdmi_type1.max_fall = db[5];
 if (len >= 6)
  connector->hdr_sink_metadata.hdmi_type1.min_cll = db[6];
}
