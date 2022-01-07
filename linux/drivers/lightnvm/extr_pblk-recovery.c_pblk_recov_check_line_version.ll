; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_recov_check_line_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_recov_check_line_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.line_emeta = type { %struct.line_header }
%struct.line_header = type { i64, i64 }

@EMETA_VERSION_MAJOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"line major version mismatch: %d, expected: %d\0A\00", align 1
@EMETA_VERSION_MINOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.line_emeta*)* @pblk_recov_check_line_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_recov_check_line_version(%struct.pblk* %0, %struct.line_emeta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.line_emeta*, align 8
  %6 = alloca %struct.line_header*, align 8
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.line_emeta* %1, %struct.line_emeta** %5, align 8
  %7 = load %struct.line_emeta*, %struct.line_emeta** %5, align 8
  %8 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %7, i32 0, i32 0
  store %struct.line_header* %8, %struct.line_header** %6, align 8
  %9 = load %struct.line_header*, %struct.line_header** %6, align 8
  %10 = getelementptr inbounds %struct.line_header, %struct.line_header* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EMETA_VERSION_MAJOR, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.pblk*, %struct.pblk** %4, align 8
  %16 = load %struct.line_header*, %struct.line_header** %6, align 8
  %17 = getelementptr inbounds %struct.line_header, %struct.line_header* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EMETA_VERSION_MAJOR, align 8
  %20 = call i32 @pblk_err(%struct.pblk* %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19)
  store i32 1, i32* %3, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %14
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
