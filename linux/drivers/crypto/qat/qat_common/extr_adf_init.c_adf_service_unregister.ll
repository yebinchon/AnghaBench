; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_init.c_adf_service_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_init.c_adf_service_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_hndl = type { i64*, i64* }

@.str = private unnamed_addr constant [38 x i8] c"QAT: Could not remove active service\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adf_service_unregister(%struct.service_hndl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.service_hndl*, align 8
  %4 = alloca i32, align 4
  store %struct.service_hndl* %0, %struct.service_hndl** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.service_hndl*, %struct.service_hndl** %3, align 8
  %8 = getelementptr inbounds %struct.service_hndl, %struct.service_hndl* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = call i32 @ARRAY_SIZE(i64* %9)
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %5
  %13 = load %struct.service_hndl*, %struct.service_hndl** %3, align 8
  %14 = getelementptr inbounds %struct.service_hndl, %struct.service_hndl* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %12
  %22 = load %struct.service_hndl*, %struct.service_hndl** %3, align 8
  %23 = getelementptr inbounds %struct.service_hndl, %struct.service_hndl* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21, %12
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EFAULT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %41

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %5

38:                                               ; preds = %5
  %39 = load %struct.service_hndl*, %struct.service_hndl** %3, align 8
  %40 = call i32 @adf_service_remove(%struct.service_hndl* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %30
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @adf_service_remove(%struct.service_hndl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
