; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_done_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_done_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_tdes_dev = type { i32, i32, i8*, i8*, i64 }

@TDES_FLAGS_DMA = common dso_local global i32 0, align 4
@TDES_FLAGS_FAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @atmel_tdes_done_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_tdes_done_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.atmel_tdes_dev*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.atmel_tdes_dev*
  store %struct.atmel_tdes_dev* %6, %struct.atmel_tdes_dev** %3, align 8
  %7 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @TDES_FLAGS_DMA, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %15 = call i32 @atmel_tdes_crypt_pdc_stop(%struct.atmel_tdes_dev* %14)
  store i32 %15, i32* %4, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %18 = call i32 @atmel_tdes_crypt_dma_stop(%struct.atmel_tdes_dev* %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %21 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ %22, %24 ], [ %26, %25 ]
  store i32 %28, i32* %4, align 4
  %29 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %30 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %80

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %80, label %36

36:                                               ; preds = %33
  %37 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %38 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TDES_FLAGS_FAST, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %36
  %44 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %45 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @sg_next(i8* %46)
  %48 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %49 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %51 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @sg_next(i8* %52)
  %54 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %55 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %57 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %43
  %61 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %62 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60, %43
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %60
  br label %69

69:                                               ; preds = %68, %36
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %74 = call i32 @atmel_tdes_crypt_start(%struct.atmel_tdes_dev* %73)
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %86

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79, %33, %27
  %81 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @atmel_tdes_finish_req(%struct.atmel_tdes_dev* %81, i32 %82)
  %84 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %85 = call i32 @atmel_tdes_handle_queue(%struct.atmel_tdes_dev* %84, i32* null)
  br label %86

86:                                               ; preds = %80, %78
  ret void
}

declare dso_local i32 @atmel_tdes_crypt_pdc_stop(%struct.atmel_tdes_dev*) #1

declare dso_local i32 @atmel_tdes_crypt_dma_stop(%struct.atmel_tdes_dev*) #1

declare dso_local i8* @sg_next(i8*) #1

declare dso_local i32 @atmel_tdes_crypt_start(%struct.atmel_tdes_dev*) #1

declare dso_local i32 @atmel_tdes_finish_req(%struct.atmel_tdes_dev*, i32) #1

declare dso_local i32 @atmel_tdes_handle_queue(%struct.atmel_tdes_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
