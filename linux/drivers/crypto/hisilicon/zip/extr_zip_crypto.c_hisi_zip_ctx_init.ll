; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_ctx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip_ctx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hisi_zip* }
%struct.hisi_zip = type { %struct.hisi_qm }
%struct.hisi_qm = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Failed to find a proper ZIP device!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HZIP_CTX_Q_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_zip_ctx*, i32)* @hisi_zip_ctx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_zip_ctx_init(%struct.hisi_zip_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_zip_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hisi_zip*, align 8
  %7 = alloca %struct.hisi_qm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hisi_zip_ctx* %0, %struct.hisi_zip_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call i32 (...) @smp_processor_id()
  %12 = call i32 @cpu_to_node(i32 %11)
  %13 = call %struct.hisi_zip* @find_zip_device(i32 %12)
  store %struct.hisi_zip* %13, %struct.hisi_zip** %6, align 8
  %14 = load %struct.hisi_zip*, %struct.hisi_zip** %6, align 8
  %15 = icmp ne %struct.hisi_zip* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %73

20:                                               ; preds = %2
  %21 = load %struct.hisi_zip*, %struct.hisi_zip** %6, align 8
  %22 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %21, i32 0, i32 0
  store %struct.hisi_qm* %22, %struct.hisi_qm** %7, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %50, %20
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @HZIP_CTX_Q_NUM, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %23
  %28 = load %struct.hisi_qm*, %struct.hisi_qm** %7, align 8
  %29 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.hisi_zip_ctx, %struct.hisi_zip_ctx* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @hisi_zip_create_qp(%struct.hisi_qm* %28, %struct.TYPE_3__* %34, i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %54

41:                                               ; preds = %27
  %42 = load %struct.hisi_zip*, %struct.hisi_zip** %6, align 8
  %43 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.hisi_zip_ctx, %struct.hisi_zip_ctx* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store %struct.hisi_zip* %42, %struct.hisi_zip** %49, align 8
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %23

53:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %73

54:                                               ; preds = %40
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %68, %54
  %58 = load i32, i32* %10, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.hisi_zip_ctx, %struct.hisi_zip_ctx* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = call i32 @hisi_zip_release_qp(%struct.TYPE_3__* %66)
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %10, align 4
  br label %57

71:                                               ; preds = %57
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %53, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.hisi_zip* @find_zip_device(i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @hisi_zip_create_qp(%struct.hisi_qm*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @hisi_zip_release_qp(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
