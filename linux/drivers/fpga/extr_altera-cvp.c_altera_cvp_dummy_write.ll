; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-cvp.c_altera_cvp_dummy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-cvp.c_altera_cvp_dummy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_cvp_conf = type { i32 (%struct.altera_cvp_conf*, i32)* }

@VSE_CVP_MODE_CTRL = common dso_local global i32 0, align 4
@VSE_CVP_MODE_CTRL_NUMCLKS_MASK = common dso_local global i32 0, align 4
@VSE_CVP_MODE_CTRL_NUMCLKS_OFF = common dso_local global i32 0, align 4
@CVP_DUMMY_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_cvp_conf*)* @altera_cvp_dummy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_cvp_dummy_write(%struct.altera_cvp_conf* %0) #0 {
  %2 = alloca %struct.altera_cvp_conf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.altera_cvp_conf* %0, %struct.altera_cvp_conf** %2, align 8
  %5 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %2, align 8
  %6 = load i32, i32* @VSE_CVP_MODE_CTRL, align 4
  %7 = call i32 @altera_read_config_dword(%struct.altera_cvp_conf* %5, i32 %6, i32* %4)
  %8 = load i32, i32* @VSE_CVP_MODE_CTRL_NUMCLKS_MASK, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @VSE_CVP_MODE_CTRL_NUMCLKS_OFF, align 4
  %13 = shl i32 1, %12
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %2, align 8
  %17 = load i32, i32* @VSE_CVP_MODE_CTRL, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @altera_write_config_dword(%struct.altera_cvp_conf* %16, i32 %17, i32 %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %30, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @CVP_DUMMY_WR, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %2, align 8
  %26 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %25, i32 0, i32 0
  %27 = load i32 (%struct.altera_cvp_conf*, i32)*, i32 (%struct.altera_cvp_conf*, i32)** %26, align 8
  %28 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %2, align 8
  %29 = call i32 %27(%struct.altera_cvp_conf* %28, i32 0)
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %20

33:                                               ; preds = %20
  ret void
}

declare dso_local i32 @altera_read_config_dword(%struct.altera_cvp_conf*, i32, i32*) #1

declare dso_local i32 @altera_write_config_dword(%struct.altera_cvp_conf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
