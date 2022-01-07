; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_hsi_iface = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"cs_hsi_stop\0A\00", align 1
@CS_STATE_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_hsi_iface*)* @cs_hsi_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_hsi_stop(%struct.cs_hsi_iface* %0) #0 {
  %2 = alloca %struct.cs_hsi_iface*, align 8
  store %struct.cs_hsi_iface* %0, %struct.cs_hsi_iface** %2, align 8
  %3 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %4 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %3, i32 0, i32 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @dev_dbg(i32* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %9 = call i32 @cs_hsi_set_wakeline(%struct.cs_hsi_iface* %8, i32 0)
  %10 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %11 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ssip_slave_put_master(i32 %12)
  %14 = load i32, i32* @CS_STATE_CLOSED, align 4
  %15 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %16 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %18 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i32 @hsi_release_port(%struct.TYPE_2__* %19)
  %21 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %22 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cs_state_idle(i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %30 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @cs_state_idle(i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %38 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %37, i32 0, i32 1
  %39 = call i64 @pm_qos_request_active(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %43 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %42, i32 0, i32 1
  %44 = call i32 @pm_qos_remove_request(i32* %43)
  br label %45

45:                                               ; preds = %41, %1
  %46 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %47 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %46, i32 0, i32 0
  %48 = call i32 @spin_lock_bh(i32* %47)
  %49 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %50 = call i32 @cs_hsi_free_data(%struct.cs_hsi_iface* %49)
  %51 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %52 = call i32 @cs_free_cmds(%struct.cs_hsi_iface* %51)
  %53 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %54 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock_bh(i32* %54)
  %56 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %57 = call i32 @kfree(%struct.cs_hsi_iface* %56)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @cs_hsi_set_wakeline(%struct.cs_hsi_iface*, i32) #1

declare dso_local i32 @ssip_slave_put_master(i32) #1

declare dso_local i32 @hsi_release_port(%struct.TYPE_2__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cs_state_idle(i32) #1

declare dso_local i64 @pm_qos_request_active(i32*) #1

declare dso_local i32 @pm_qos_remove_request(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cs_hsi_free_data(%struct.cs_hsi_iface*) #1

declare dso_local i32 @cs_free_cmds(%struct.cs_hsi_iface*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.cs_hsi_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
