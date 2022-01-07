; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_set_chunk_meta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_set_chunk_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_tgt_dev = type { %struct.nvm_dev* }
%struct.nvm_dev = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 (%struct.nvm_dev*, i32*, i32, i32)* }
%struct.TYPE_4__ = type { i64 }
%struct.ppa_addr = type { i32 }
%struct.nvm_rq = type { i32, i32 }

@NVM_OCSSD_SPEC_20 = common dso_local global i64 0, align 8
@NVM_MAX_VLBA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unable to update all blocks atomically\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvm_set_chunk_meta(%struct.nvm_tgt_dev* %0, %struct.ppa_addr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvm_tgt_dev*, align 8
  %7 = alloca %struct.ppa_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvm_dev*, align 8
  %11 = alloca %struct.nvm_rq, align 4
  %12 = alloca i32, align 4
  store %struct.nvm_tgt_dev* %0, %struct.nvm_tgt_dev** %6, align 8
  store %struct.ppa_addr* %1, %struct.ppa_addr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %6, align 8
  %14 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %13, i32 0, i32 0
  %15 = load %struct.nvm_dev*, %struct.nvm_dev** %14, align 8
  store %struct.nvm_dev* %15, %struct.nvm_dev** %10, align 8
  %16 = load %struct.nvm_dev*, %struct.nvm_dev** %10, align 8
  %17 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NVM_OCSSD_SPEC_20, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @NVM_MAX_VLBA, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %58

31:                                               ; preds = %23
  %32 = call i32 @memset(%struct.nvm_rq* %11, i32 0, i32 8)
  %33 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %6, align 8
  %34 = load %struct.ppa_addr*, %struct.ppa_addr** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @nvm_set_rqd_ppalist(%struct.nvm_tgt_dev* %33, %struct.nvm_rq* %11, %struct.ppa_addr* %34, i32 %35)
  %37 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %6, align 8
  %38 = call i32 @nvm_rq_tgt_to_dev(%struct.nvm_tgt_dev* %37, %struct.nvm_rq* %11)
  %39 = load %struct.nvm_dev*, %struct.nvm_dev** %10, align 8
  %40 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.nvm_dev*, i32*, i32, i32)*, i32 (%struct.nvm_dev*, i32*, i32, i32)** %42, align 8
  %44 = load %struct.nvm_dev*, %struct.nvm_dev** %10, align 8
  %45 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %11, i32 0, i32 1
  %46 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %11, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 %43(%struct.nvm_dev* %44, i32* %45, i32 %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %6, align 8
  %51 = call i32 @nvm_free_rqd_ppalist(%struct.nvm_tgt_dev* %50, %struct.nvm_rq* %11)
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %31
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %54, %27, %22
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memset(%struct.nvm_rq*, i32, i32) #1

declare dso_local i32 @nvm_set_rqd_ppalist(%struct.nvm_tgt_dev*, %struct.nvm_rq*, %struct.ppa_addr*, i32) #1

declare dso_local i32 @nvm_rq_tgt_to_dev(%struct.nvm_tgt_dev*, %struct.nvm_rq*) #1

declare dso_local i32 @nvm_free_rqd_ppalist(%struct.nvm_tgt_dev*, %struct.nvm_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
