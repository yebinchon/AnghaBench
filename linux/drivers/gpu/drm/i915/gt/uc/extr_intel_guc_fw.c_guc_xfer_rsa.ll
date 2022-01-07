; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_fw.c_guc_xfer_rsa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_fw.c_guc_xfer_rsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc_fw = type { i32 }
%struct.intel_uncore = type { i32 }

@UOS_RSA_SCRATCH_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uc_fw*, %struct.intel_uncore*)* @guc_xfer_rsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guc_xfer_rsa(%struct.intel_uc_fw* %0, %struct.intel_uncore* %1) #0 {
  %3 = alloca %struct.intel_uc_fw*, align 8
  %4 = alloca %struct.intel_uncore*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.intel_uc_fw* %0, %struct.intel_uc_fw** %3, align 8
  store %struct.intel_uncore* %1, %struct.intel_uncore** %4, align 8
  %9 = load i32, i32* @UOS_RSA_SCRATCH_COUNT, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %14 = mul nuw i64 4, %10
  %15 = trunc i64 %14 to i32
  %16 = call i64 @intel_uc_fw_copy_rsa(%struct.intel_uc_fw* %13, i32* %12, i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = mul nuw i64 4, %10
  %19 = icmp ult i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @GEM_BUG_ON(i32 %20)
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %35, %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @UOS_RSA_SCRATCH_COUNT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @UOS_RSA_SCRATCH(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %12, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @intel_uncore_write(%struct.intel_uncore* %27, i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %22

38:                                               ; preds = %22
  %39 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %39)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @intel_uc_fw_copy_rsa(%struct.intel_uc_fw*, i32*, i32) #2

declare dso_local i32 @GEM_BUG_ON(i32) #2

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #2

declare dso_local i32 @UOS_RSA_SCRATCH(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
