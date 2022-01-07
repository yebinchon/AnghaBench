; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_done_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_done_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_hash_dev = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRIVER_FLAGS_BUSY = common dso_local global i32 0, align 4
@DRIVER_FLAGS_CPU = common dso_local global i32 0, align 4
@DRIVER_FLAGS_OUTPUT_READY = common dso_local global i32 0, align 4
@DRIVER_FLAGS_DMA_READY = common dso_local global i32 0, align 4
@DRIVER_FLAGS_DMA_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @img_hash_done_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_hash_done_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.img_hash_dev*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.img_hash_dev*
  store %struct.img_hash_dev* %6, %struct.img_hash_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %8 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %15 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  br label %100

17:                                               ; preds = %1
  %18 = load i32, i32* @DRIVER_FLAGS_BUSY, align 4
  %19 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %20 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %26 = call i32 @img_hash_handle_queue(%struct.img_hash_dev* %25, i32* null)
  br label %106

27:                                               ; preds = %17
  %28 = load i32, i32* @DRIVER_FLAGS_CPU, align 4
  %29 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %30 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %27
  %35 = load i32, i32* @DRIVER_FLAGS_OUTPUT_READY, align 4
  %36 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %37 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i32, i32* @DRIVER_FLAGS_OUTPUT_READY, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %45 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %100

48:                                               ; preds = %34
  br label %99

49:                                               ; preds = %27
  %50 = load i32, i32* @DRIVER_FLAGS_DMA_READY, align 4
  %51 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %52 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %98

56:                                               ; preds = %49
  %57 = load i32, i32* @DRIVER_FLAGS_DMA_ACTIVE, align 4
  %58 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %59 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %56
  %64 = load i32, i32* @DRIVER_FLAGS_DMA_ACTIVE, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %67 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %71 = call i32 @img_hash_write_via_dma_stop(%struct.img_hash_dev* %70)
  %72 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %73 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %63
  %77 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %78 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %4, align 4
  br label %100

80:                                               ; preds = %63
  br label %81

81:                                               ; preds = %80, %56
  %82 = load i32, i32* @DRIVER_FLAGS_OUTPUT_READY, align 4
  %83 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %84 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = load i32, i32* @DRIVER_FLAGS_DMA_READY, align 4
  %90 = load i32, i32* @DRIVER_FLAGS_OUTPUT_READY, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %94 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %100

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %49
  br label %99

99:                                               ; preds = %98, %48
  br label %106

100:                                              ; preds = %88, %76, %41, %13
  %101 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %102 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @img_hash_finish_req(i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %99, %24
  ret void
}

declare dso_local i32 @img_hash_handle_queue(%struct.img_hash_dev*, i32*) #1

declare dso_local i32 @img_hash_write_via_dma_stop(%struct.img_hash_dev*) #1

declare dso_local i32 @img_hash_finish_req(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
