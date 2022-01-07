; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_hsi_iface = type { i32 }

@TARGET_MASK = common dso_local global i32 0, align 4
@CS_CMD_MASK = common dso_local global i32 0, align 4
@CS_TX_DATA_READY = common dso_local global i32 0, align 4
@CS_PARAM_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_hsi_iface*, i32)* @cs_hsi_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_hsi_command(%struct.cs_hsi_iface* %0, i32 %1) #0 {
  %3 = alloca %struct.cs_hsi_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cs_hsi_iface* %0, %struct.cs_hsi_iface** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @local_bh_disable()
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @TARGET_MASK, align 4
  %9 = and i32 %7, %8
  switch i32 %9, label %30 [
    i32 128, label %10
    i32 129, label %14
  ]

10:                                               ; preds = %2
  %11 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @cs_hsi_write_on_control(%struct.cs_hsi_iface* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CS_CMD_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @CS_TX_DATA_READY, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @CS_PARAM_MASK, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @cs_hsi_write_on_data(%struct.cs_hsi_iface* %21, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %29

26:                                               ; preds = %14
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %20
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %29, %10
  %34 = call i32 (...) @local_bh_enable()
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @cs_hsi_write_on_control(%struct.cs_hsi_iface*, i32) #1

declare dso_local i32 @cs_hsi_write_on_data(%struct.cs_hsi_iface*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
