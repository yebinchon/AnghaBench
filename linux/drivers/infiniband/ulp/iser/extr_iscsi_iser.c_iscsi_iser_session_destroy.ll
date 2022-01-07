; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_session_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_session_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { i32 }
%struct.Scsi_Host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_cls_session*)* @iscsi_iser_session_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_iser_session_destroy(%struct.iscsi_cls_session* %0) #0 {
  %2 = alloca %struct.iscsi_cls_session*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %2, align 8
  %4 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %2, align 8
  %5 = call %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session* %4)
  store %struct.Scsi_Host* %5, %struct.Scsi_Host** %3, align 8
  %6 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %2, align 8
  %7 = call i32 @iscsi_session_teardown(%struct.iscsi_cls_session* %6)
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = call i32 @iscsi_host_remove(%struct.Scsi_Host* %8)
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %11 = call i32 @iscsi_host_free(%struct.Scsi_Host* %10)
  ret void
}

declare dso_local %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session*) #1

declare dso_local i32 @iscsi_session_teardown(%struct.iscsi_cls_session*) #1

declare dso_local i32 @iscsi_host_remove(%struct.Scsi_Host*) #1

declare dso_local i32 @iscsi_host_free(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
