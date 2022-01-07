; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc.c_edac_dimm_info_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc.c_edac_dimm_info_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dimm_info = type { i32*, %struct.mem_ctl_info* }
%struct.mem_ctl_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"%s %d \00", align 1
@edac_layer_name = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edac_dimm_info_location(%struct.dimm_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dimm_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mem_ctl_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.dimm_info* %0, %struct.dimm_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %13 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %12, i32 0, i32 1
  %14 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %13, align 8
  store %struct.mem_ctl_info* %14, %struct.mem_ctl_info** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %11, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %58, %3
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %19 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %16
  %23 = load i8*, i8** %11, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i8**, i8*** @edac_layer_name, align 8
  %26 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %27 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i8*, i8** %25, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %37 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %22
  br label %61

57:                                               ; preds = %22
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %16

61:                                               ; preds = %56, %16
  %62 = load i32, i32* %10, align 4
  ret i32 %62
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
