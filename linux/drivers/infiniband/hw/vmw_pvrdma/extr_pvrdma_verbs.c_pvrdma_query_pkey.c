
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int pkey; } ;
union pvrdma_cmd_resp {TYPE_3__ query_pkey_resp; } ;
struct TYPE_6__ {int cmd; } ;
struct pvrdma_cmd_query_pkey {int index; int port_num; TYPE_1__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_query_pkey query_pkey; } ;
typedef int u8 ;
typedef int u16 ;
struct ib_device {int dummy; } ;
struct TYPE_9__ {TYPE_2__* pdev; } ;
struct TYPE_7__ {int dev; } ;


 int PVRDMA_CMD_QUERY_PKEY ;
 int PVRDMA_CMD_QUERY_PKEY_RESP ;
 int dev_warn (int *,char*,int) ;
 int memset (struct pvrdma_cmd_query_pkey*,int ,int) ;
 int pvrdma_cmd_post (TYPE_4__*,union pvrdma_cmd_req*,union pvrdma_cmd_resp*,int ) ;
 TYPE_4__* to_vdev (struct ib_device*) ;

int pvrdma_query_pkey(struct ib_device *ibdev, u8 port, u16 index,
        u16 *pkey)
{
 int err = 0;
 union pvrdma_cmd_req req;
 union pvrdma_cmd_resp rsp;
 struct pvrdma_cmd_query_pkey *cmd = &req.query_pkey;

 memset(cmd, 0, sizeof(*cmd));
 cmd->hdr.cmd = PVRDMA_CMD_QUERY_PKEY;
 cmd->port_num = port;
 cmd->index = index;

 err = pvrdma_cmd_post(to_vdev(ibdev), &req, &rsp,
         PVRDMA_CMD_QUERY_PKEY_RESP);
 if (err < 0) {
  dev_warn(&to_vdev(ibdev)->pdev->dev,
    "could not query pkey, error: %d\n", err);
  return err;
 }

 *pkey = rsp.query_pkey_resp.pkey;

 return 0;
}
