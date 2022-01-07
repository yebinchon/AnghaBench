; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_recov_wa_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_recov_wa_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i8*, i8*, i8*, i32, i32, i32, %struct.pblk_line_meta }
%struct.pblk_line_meta = type { i32 }
%struct.line_emeta = type { %struct.line_header }
%struct.line_header = type { i64, i32 }
%struct.wa_counters = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, %struct.line_emeta*)* @pblk_recov_wa_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_recov_wa_counters(%struct.pblk* %0, %struct.line_emeta* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.line_emeta*, align 8
  %5 = alloca %struct.pblk_line_meta*, align 8
  %6 = alloca %struct.line_header*, align 8
  %7 = alloca %struct.wa_counters*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.line_emeta* %1, %struct.line_emeta** %4, align 8
  %11 = load %struct.pblk*, %struct.pblk** %3, align 8
  %12 = getelementptr inbounds %struct.pblk, %struct.pblk* %11, i32 0, i32 6
  store %struct.pblk_line_meta* %12, %struct.pblk_line_meta** %5, align 8
  %13 = load %struct.line_emeta*, %struct.line_emeta** %4, align 8
  %14 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %13, i32 0, i32 0
  store %struct.line_header* %14, %struct.line_header** %6, align 8
  %15 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %5, align 8
  %16 = load %struct.line_emeta*, %struct.line_emeta** %4, align 8
  %17 = call %struct.wa_counters* @emeta_to_wa(%struct.pblk_line_meta* %15, %struct.line_emeta* %16)
  store %struct.wa_counters* %17, %struct.wa_counters** %7, align 8
  %18 = load %struct.line_header*, %struct.line_header** %6, align 8
  %19 = getelementptr inbounds %struct.line_header, %struct.line_header* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.line_header*, %struct.line_header** %6, align 8
  %24 = getelementptr inbounds %struct.line_header, %struct.line_header* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %25, 2
  br i1 %26, label %27, label %61

27:                                               ; preds = %22, %2
  %28 = load %struct.wa_counters*, %struct.wa_counters** %7, align 8
  %29 = getelementptr inbounds %struct.wa_counters, %struct.wa_counters* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @le64_to_cpu(i32 %30)
  store i8* %31, i8** %8, align 8
  %32 = load %struct.wa_counters*, %struct.wa_counters** %7, align 8
  %33 = getelementptr inbounds %struct.wa_counters, %struct.wa_counters* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @le64_to_cpu(i32 %34)
  store i8* %35, i8** %9, align 8
  %36 = load %struct.wa_counters*, %struct.wa_counters** %7, align 8
  %37 = getelementptr inbounds %struct.wa_counters, %struct.wa_counters* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @le64_to_cpu(i32 %38)
  store i8* %39, i8** %10, align 8
  %40 = load %struct.pblk*, %struct.pblk** %3, align 8
  %41 = getelementptr inbounds %struct.pblk, %struct.pblk* %40, i32 0, i32 5
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @atomic64_set(i32* %41, i8* %42)
  %44 = load %struct.pblk*, %struct.pblk** %3, align 8
  %45 = getelementptr inbounds %struct.pblk, %struct.pblk* %44, i32 0, i32 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @atomic64_set(i32* %45, i8* %46)
  %48 = load %struct.pblk*, %struct.pblk** %3, align 8
  %49 = getelementptr inbounds %struct.pblk, %struct.pblk* %48, i32 0, i32 3
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @atomic64_set(i32* %49, i8* %50)
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.pblk*, %struct.pblk** %3, align 8
  %54 = getelementptr inbounds %struct.pblk, %struct.pblk* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.pblk*, %struct.pblk** %3, align 8
  %57 = getelementptr inbounds %struct.pblk, %struct.pblk* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.pblk*, %struct.pblk** %3, align 8
  %60 = getelementptr inbounds %struct.pblk, %struct.pblk* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %27, %22
  ret void
}

declare dso_local %struct.wa_counters* @emeta_to_wa(%struct.pblk_line_meta*, %struct.line_emeta*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @atomic64_set(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
