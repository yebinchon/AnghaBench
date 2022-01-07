; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_get_lba_list_from_emeta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_get_lba_list_from_emeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_meta }
%struct.pblk_line_meta = type { i32* }
%struct.pblk_line = type { i32 }
%struct.line_emeta = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"line %d read emeta failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"inconsistent emeta (line %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.pblk*, %struct.pblk_line*)* @get_lba_list_from_emeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_lba_list_from_emeta(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.line_emeta*, align 8
  %7 = alloca %struct.pblk_line_meta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  %11 = load %struct.pblk*, %struct.pblk** %4, align 8
  %12 = getelementptr inbounds %struct.pblk, %struct.pblk* %11, i32 0, i32 0
  store %struct.pblk_line_meta* %12, %struct.pblk_line_meta** %7, align 8
  %13 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %14 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %19 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kvmalloc(i32 %22, i32 %23)
  %25 = bitcast i8* %24 to %struct.line_emeta*
  store %struct.line_emeta* %25, %struct.line_emeta** %6, align 8
  %26 = load %struct.line_emeta*, %struct.line_emeta** %6, align 8
  %27 = icmp ne %struct.line_emeta* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %77

29:                                               ; preds = %2
  %30 = load %struct.pblk*, %struct.pblk** %4, align 8
  %31 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %32 = load %struct.line_emeta*, %struct.line_emeta** %6, align 8
  %33 = call i32 @pblk_line_emeta_read(%struct.pblk* %30, %struct.pblk_line* %31, %struct.line_emeta* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.pblk*, %struct.pblk** %4, align 8
  %38 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %39 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (%struct.pblk*, i8*, i32, ...) @pblk_err(%struct.pblk* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load %struct.line_emeta*, %struct.line_emeta** %6, align 8
  %44 = call i32 @kvfree(%struct.line_emeta* %43)
  store i32* null, i32** %3, align 8
  br label %77

45:                                               ; preds = %29
  %46 = load %struct.pblk*, %struct.pblk** %4, align 8
  %47 = load %struct.line_emeta*, %struct.line_emeta** %6, align 8
  %48 = call i32 @pblk_recov_check_emeta(%struct.pblk* %46, %struct.line_emeta* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.pblk*, %struct.pblk** %4, align 8
  %53 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %54 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (%struct.pblk*, i8*, i32, ...) @pblk_err(%struct.pblk* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load %struct.line_emeta*, %struct.line_emeta** %6, align 8
  %58 = call i32 @kvfree(%struct.line_emeta* %57)
  store i32* null, i32** %3, align 8
  br label %77

59:                                               ; preds = %45
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kvmalloc(i32 %60, i32 %61)
  %63 = bitcast i8* %62 to i32*
  store i32* %63, i32** %9, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.pblk*, %struct.pblk** %4, align 8
  %69 = load %struct.line_emeta*, %struct.line_emeta** %6, align 8
  %70 = call i32 @emeta_to_lbas(%struct.pblk* %68, %struct.line_emeta* %69)
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @memcpy(i32* %67, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %59
  %74 = load %struct.line_emeta*, %struct.line_emeta** %6, align 8
  %75 = call i32 @kvfree(%struct.line_emeta* %74)
  %76 = load i32*, i32** %9, align 8
  store i32* %76, i32** %3, align 8
  br label %77

77:                                               ; preds = %73, %51, %36, %28
  %78 = load i32*, i32** %3, align 8
  ret i32* %78
}

declare dso_local i8* @kvmalloc(i32, i32) #1

declare dso_local i32 @pblk_line_emeta_read(%struct.pblk*, %struct.pblk_line*, %struct.line_emeta*) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32, ...) #1

declare dso_local i32 @kvfree(%struct.line_emeta*) #1

declare dso_local i32 @pblk_recov_check_emeta(%struct.pblk*, %struct.line_emeta*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @emeta_to_lbas(%struct.pblk*, %struct.line_emeta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
