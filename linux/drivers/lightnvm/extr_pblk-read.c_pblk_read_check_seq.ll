; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_pblk_read_check_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_pblk_read_check_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.nvm_rq = type { i32, i8* }
%struct.pblk_sec_meta = type { i32 }

@ADDR_EMPTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"corrupted read LBA (%llu/%llu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, %struct.nvm_rq*, i64)* @pblk_read_check_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_read_check_seq(%struct.pblk* %0, %struct.nvm_rq* %1, i64 %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.nvm_rq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pblk_sec_meta*, align 8
  %11 = alloca i64, align 8
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %13 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %16 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.pblk*, %struct.pblk** %4, align 8
  %19 = call i32 @pblk_is_oob_meta_supported(%struct.pblk* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %60

22:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %57, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  %28 = load %struct.pblk*, %struct.pblk** %4, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.pblk_sec_meta* @pblk_get_meta(%struct.pblk* %28, i8* %29, i32 %30)
  store %struct.pblk_sec_meta* %31, %struct.pblk_sec_meta** %10, align 8
  %32 = load %struct.pblk_sec_meta*, %struct.pblk_sec_meta** %10, align 8
  %33 = getelementptr inbounds %struct.pblk_sec_meta, %struct.pblk_sec_meta* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le64_to_cpu(i32 %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @ADDR_EMPTY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %57

40:                                               ; preds = %27
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = icmp ne i64 %41, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.pblk*, %struct.pblk** %4, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = call i32 @pblk_err(%struct.pblk* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %53)
  %55 = call i32 @WARN_ON(i32 1)
  br label %56

56:                                               ; preds = %47, %40
  br label %57

57:                                               ; preds = %56, %39
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %23

60:                                               ; preds = %21, %23
  ret void
}

declare dso_local i32 @pblk_is_oob_meta_supported(%struct.pblk*) #1

declare dso_local %struct.pblk_sec_meta* @pblk_get_meta(%struct.pblk*, i8*, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i64, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
