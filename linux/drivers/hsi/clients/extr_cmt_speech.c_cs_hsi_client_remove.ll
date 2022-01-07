; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_client_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_client_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.cs_hsi_iface* }
%struct.cs_hsi_iface = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"hsi_client_remove\0A\00", align 1
@cs_char_miscdev = common dso_local global i32 0, align 4
@cs_char_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @cs_hsi_client_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_hsi_client_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.cs_hsi_iface*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call i32 @dev_dbg(%struct.device* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @misc_deregister(i32* @cs_char_miscdev)
  %7 = call i32 @spin_lock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 0))
  %8 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 1), align 8
  store %struct.cs_hsi_iface* %8, %struct.cs_hsi_iface** %3, align 8
  store %struct.cs_hsi_iface* null, %struct.cs_hsi_iface** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 1), align 8
  %9 = call i32 @spin_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 0))
  %10 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %11 = icmp ne %struct.cs_hsi_iface* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %14 = call i32 @cs_hsi_stop(%struct.cs_hsi_iface* %13)
  br label %15

15:                                               ; preds = %12, %1
  ret i32 0
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cs_hsi_stop(%struct.cs_hsi_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
