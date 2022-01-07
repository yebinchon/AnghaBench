; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_opc_tag_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_opc_tag_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@FSP_REG_OPC_QDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unable get OPC state.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FSP_BIT_EN_OPC_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to enable OPC tag.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @fsp_opc_tag_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsp_opc_tag_enable(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %10 = load i32, i32* @FSP_REG_OPC_QDOWN, align 4
  %11 = call i32 @fsp_reg_read(%struct.psmouse* %9, i32 %10, i32* %6)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %15 = call i32 @psmouse_err(%struct.psmouse* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @FSP_BIT_EN_OPC_TAG, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %7, align 4
  br label %30

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @FSP_BIT_EN_OPC_TAG, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %36 = call i32 @fsp_reg_write_enable(%struct.psmouse* %35, i32 1)
  %37 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %38 = load i32, i32* @FSP_REG_OPC_QDOWN, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @fsp_reg_write(%struct.psmouse* %37, i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %42 = call i32 @fsp_reg_write_enable(%struct.psmouse* %41, i32 0)
  br label %43

43:                                               ; preds = %34, %30
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %48 = call i32 @psmouse_err(%struct.psmouse* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %13
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @fsp_reg_read(%struct.psmouse*, i32, i32*) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

declare dso_local i32 @fsp_reg_write_enable(%struct.psmouse*, i32) #1

declare dso_local i32 @fsp_reg_write(%struct.psmouse*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
