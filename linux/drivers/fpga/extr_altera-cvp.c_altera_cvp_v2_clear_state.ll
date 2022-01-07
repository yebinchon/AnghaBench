; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-cvp.c_altera_cvp_v2_clear_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-cvp.c_altera_cvp_v2_clear_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_cvp_conf = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@VSE_CVP_PROG_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Error reading CVP Program Control Register\0A\00", align 1
@VSE_CVP_PROG_CTRL_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Error writing CVP Program Control Register\0A\00", align 1
@VSE_CVP_STATUS_CFG_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_cvp_conf*)* @altera_cvp_v2_clear_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_cvp_v2_clear_state(%struct.altera_cvp_conf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.altera_cvp_conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.altera_cvp_conf* %0, %struct.altera_cvp_conf** %3, align 8
  %6 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %3, align 8
  %7 = load i32, i32* @VSE_CVP_PROG_CTRL, align 4
  %8 = call i32 @altera_read_config_dword(%struct.altera_cvp_conf* %6, i32 %7, i32* %4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %3, align 8
  %13 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %45

18:                                               ; preds = %1
  %19 = load i32, i32* @VSE_CVP_PROG_CTRL_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %3, align 8
  %24 = load i32, i32* @VSE_CVP_PROG_CTRL, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @altera_write_config_dword(%struct.altera_cvp_conf* %23, i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %18
  %30 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %3, align 8
  %31 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %45

36:                                               ; preds = %18
  %37 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %3, align 8
  %38 = load i32, i32* @VSE_CVP_STATUS_CFG_RDY, align 4
  %39 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %3, align 8
  %40 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @altera_cvp_wait_status(%struct.altera_cvp_conf* %37, i32 %38, i32 0, i32 %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %36, %29, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @altera_read_config_dword(%struct.altera_cvp_conf*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @altera_write_config_dword(%struct.altera_cvp_conf*, i32, i32) #1

declare dso_local i32 @altera_cvp_wait_status(%struct.altera_cvp_conf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
