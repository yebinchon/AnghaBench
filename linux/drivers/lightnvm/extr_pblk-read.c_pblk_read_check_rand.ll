; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_pblk_read_check_rand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_pblk_read_check_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.nvm_rq = type { i32, i8* }
%struct.pblk_sec_meta = type { i32 }

@ADDR_EMPTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"corrupted read LBA (%llu/%llu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"pblk: corrupted random request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, %struct.nvm_rq*, i64*, i32)* @pblk_read_check_rand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_read_check_rand(%struct.pblk* %0, %struct.nvm_rq* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca %struct.nvm_rq*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pblk_sec_meta*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %16 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %9, align 8
  %18 = load %struct.pblk*, %struct.pblk** %5, align 8
  %19 = call i32 @pblk_is_oob_meta_supported(%struct.pblk* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %69

22:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %58, %22
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = load %struct.pblk*, %struct.pblk** %5, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call %struct.pblk_sec_meta* @pblk_get_meta(%struct.pblk* %28, i8* %29, i32 %30)
  store %struct.pblk_sec_meta* %31, %struct.pblk_sec_meta** %12, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* @ADDR_EMPTY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %58

41:                                               ; preds = %27
  %42 = load %struct.pblk_sec_meta*, %struct.pblk_sec_meta** %12, align 8
  %43 = getelementptr inbounds %struct.pblk_sec_meta, %struct.pblk_sec_meta* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le64_to_cpu(i32 %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.pblk*, %struct.pblk** %5, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %13, align 8
  %53 = call i32 @pblk_err(%struct.pblk* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %52)
  %54 = call i32 @WARN_ON(i32 1)
  br label %55

55:                                               ; preds = %49, %41
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %55, %40
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %23

61:                                               ; preds = %23
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %64 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %62, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @WARN_ONCE(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %61, %21
  ret void
}

declare dso_local i32 @pblk_is_oob_meta_supported(%struct.pblk*) #1

declare dso_local %struct.pblk_sec_meta* @pblk_get_meta(%struct.pblk*, i8*, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i64, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
