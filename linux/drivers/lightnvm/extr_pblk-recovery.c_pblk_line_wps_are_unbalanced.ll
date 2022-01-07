; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_line_wps_are_unbalanced.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_line_wps_are_unbalanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i64, %struct.pblk_line_meta }
%struct.pblk_line_meta = type { i32 }
%struct.pblk_line = type { i32 }
%struct.nvm_chk_meta = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.pblk_line*)* @pblk_line_wps_are_unbalanced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_line_wps_are_unbalanced(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.pblk_line_meta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvm_chk_meta*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  %12 = load %struct.pblk*, %struct.pblk** %4, align 8
  %13 = getelementptr inbounds %struct.pblk, %struct.pblk* %12, i32 0, i32 1
  store %struct.pblk_line_meta* %13, %struct.pblk_line_meta** %6, align 8
  %14 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %15 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %18 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @find_first_zero_bit(i32 %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp sge i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %85

27:                                               ; preds = %2
  %28 = load %struct.pblk*, %struct.pblk** %4, align 8
  %29 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call %struct.nvm_chk_meta* @pblk_get_stripe_chunk(%struct.pblk* %28, %struct.pblk_line* %29, i32 %30)
  store %struct.nvm_chk_meta* %31, %struct.nvm_chk_meta** %8, align 8
  %32 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %8, align 8
  %33 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.pblk*, %struct.pblk** %4, align 8
  %37 = getelementptr inbounds %struct.pblk, %struct.pblk* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.pblk*, %struct.pblk** %4, align 8
  %43 = getelementptr inbounds %struct.pblk, %struct.pblk* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  store i64 %45, i64* %10, align 8
  br label %47

46:                                               ; preds = %27
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %46, %40
  %48 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %49 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @find_next_zero_bit(i32 %50, i32 %51, i32 %53)
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %76, %47
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %55
  %60 = load %struct.pblk*, %struct.pblk** %4, align 8
  %61 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call %struct.nvm_chk_meta* @pblk_get_stripe_chunk(%struct.pblk* %60, %struct.pblk_line* %61, i32 %62)
  store %struct.nvm_chk_meta* %63, %struct.nvm_chk_meta** %8, align 8
  %64 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %8, align 8
  %65 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %59
  %70 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %8, align 8
  %71 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69, %59
  store i32 1, i32* %3, align 4
  br label %85

76:                                               ; preds = %69
  %77 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %78 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 @find_next_zero_bit(i32 %79, i32 %80, i32 %82)
  store i32 %83, i32* %11, align 4
  br label %55

84:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %75, %26
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local %struct.nvm_chk_meta* @pblk_get_stripe_chunk(%struct.pblk*, %struct.pblk_line*, i32) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
