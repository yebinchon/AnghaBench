; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_build_new_custom_resulted_curve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_build_new_custom_resulted_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_transfer_func_distributed_points = type { i8**, i8**, i8** }

@dc_fixpt_zero = common dso_local global i32 0, align 4
@dc_fixpt_one = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.dc_transfer_func_distributed_points*)* @build_new_custom_resulted_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_new_custom_resulted_curve(i64 %0, %struct.dc_transfer_func_distributed_points* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.dc_transfer_func_distributed_points*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.dc_transfer_func_distributed_points* %1, %struct.dc_transfer_func_distributed_points** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %11, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %3, align 8
  %9 = add i64 %8, 1
  %10 = icmp ne i64 %7, %9
  br i1 %10, label %11, label %56

11:                                               ; preds = %6
  %12 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %13 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %12, i32 0, i32 2
  %14 = load i8**, i8*** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @dc_fixpt_zero, align 4
  %19 = load i32, i32* @dc_fixpt_one, align 4
  %20 = call i8* @dc_fixpt_clamp(i8* %17, i32 %18, i32 %19)
  %21 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %22 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %21, i32 0, i32 2
  %23 = load i8**, i8*** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  store i8* %20, i8** %25, align 8
  %26 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %27 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %26, i32 0, i32 1
  %28 = load i8**, i8*** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* @dc_fixpt_zero, align 4
  %33 = load i32, i32* @dc_fixpt_one, align 4
  %34 = call i8* @dc_fixpt_clamp(i8* %31, i32 %32, i32 %33)
  %35 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %36 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  store i8* %34, i8** %39, align 8
  %40 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %41 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @dc_fixpt_zero, align 4
  %47 = load i32, i32* @dc_fixpt_one, align 4
  %48 = call i8* @dc_fixpt_clamp(i8* %45, i32 %46, i32 %47)
  %49 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %50 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  store i8* %48, i8** %53, align 8
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %5, align 8
  br label %6

56:                                               ; preds = %6
  ret void
}

declare dso_local i8* @dc_fixpt_clamp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
