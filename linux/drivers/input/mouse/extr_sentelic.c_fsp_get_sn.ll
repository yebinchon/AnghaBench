; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_get_sn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_get_sn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FSP_PAGE_0B = common dso_local global i32 0, align 4
@FSP_REG_SN0 = common dso_local global i32 0, align 4
@FSP_REG_SN1 = common dso_local global i32 0, align 4
@FSP_REG_SN2 = common dso_local global i32 0, align 4
@FSP_PAGE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32*)* @fsp_get_sn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsp_get_sn(%struct.psmouse* %0, i32* %1) #0 {
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = load i32, i32* @FSP_PAGE_0B, align 4
  %13 = call i64 @fsp_page_reg_write(%struct.psmouse* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %18 = load i32, i32* @FSP_REG_SN0, align 4
  %19 = call i64 @fsp_reg_read(%struct.psmouse* %17, i32 %18, i32* %5)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %43

22:                                               ; preds = %16
  %23 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %24 = load i32, i32* @FSP_REG_SN1, align 4
  %25 = call i64 @fsp_reg_read(%struct.psmouse* %23, i32 %24, i32* %6)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %43

28:                                               ; preds = %22
  %29 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %30 = load i32, i32* @FSP_REG_SN2, align 4
  %31 = call i64 @fsp_reg_read(%struct.psmouse* %29, i32 %30, i32* %7)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %43

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 16
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, 8
  %39 = or i32 %36, %38
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %39, %40
  %42 = load i32*, i32** %4, align 8
  store i32 %41, i32* %42, align 4
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %34, %33, %27, %21, %15
  %44 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %45 = load i32, i32* @FSP_PAGE_DEFAULT, align 4
  %46 = call i64 @fsp_page_reg_write(%struct.psmouse* %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i64 @fsp_page_reg_write(%struct.psmouse*, i32) #1

declare dso_local i64 @fsp_reg_read(%struct.psmouse*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
