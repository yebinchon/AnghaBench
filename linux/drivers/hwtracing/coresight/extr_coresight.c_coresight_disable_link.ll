; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_disable_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_disable_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { i32, i32*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.coresight_device*, i32, i32)* }

@CORESIGHT_DEV_SUBTYPE_LINK_MERG = common dso_local global i32 0, align 4
@CORESIGHT_DEV_SUBTYPE_LINK_SPLIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coresight_device*, %struct.coresight_device*, %struct.coresight_device*)* @coresight_disable_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coresight_disable_link(%struct.coresight_device* %0, %struct.coresight_device* %1, %struct.coresight_device* %2) #0 {
  %4 = alloca %struct.coresight_device*, align 8
  %5 = alloca %struct.coresight_device*, align 8
  %6 = alloca %struct.coresight_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.coresight_device* %0, %struct.coresight_device** %4, align 8
  store %struct.coresight_device* %1, %struct.coresight_device** %5, align 8
  store %struct.coresight_device* %2, %struct.coresight_device** %6, align 8
  %13 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %14 = icmp ne %struct.coresight_device* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.coresight_device*, %struct.coresight_device** %6, align 8
  %17 = icmp ne %struct.coresight_device* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %3
  br label %100

19:                                               ; preds = %15
  %20 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %21 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %22 = call i32 @coresight_find_link_inport(%struct.coresight_device* %20, %struct.coresight_device* %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %24 = load %struct.coresight_device*, %struct.coresight_device** %6, align 8
  %25 = call i32 @coresight_find_link_outport(%struct.coresight_device* %23, %struct.coresight_device* %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %27 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @CORESIGHT_DEV_SUBTYPE_LINK_MERG, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %19
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %10, align 4
  %35 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %36 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  br label %53

40:                                               ; preds = %19
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @CORESIGHT_DEV_SUBTYPE_LINK_SPLIT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %10, align 4
  %46 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %47 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  br label %52

51:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  store i32 1, i32* %8, align 4
  br label %52

52:                                               ; preds = %51, %44
  br label %53

53:                                               ; preds = %52, %33
  %54 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %55 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i64 @atomic_dec_return(i32* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %53
  %63 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %64 = call %struct.TYPE_6__* @link_ops(%struct.coresight_device* %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32 (%struct.coresight_device*, i32, i32)*, i32 (%struct.coresight_device*, i32, i32)** %65, align 8
  %67 = icmp ne i32 (%struct.coresight_device*, i32, i32)* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %70 = call %struct.TYPE_6__* @link_ops(%struct.coresight_device* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32 (%struct.coresight_device*, i32, i32)*, i32 (%struct.coresight_device*, i32, i32)** %71, align 8
  %73 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 %72(%struct.coresight_device* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %62
  br label %78

78:                                               ; preds = %77, %53
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %94, %78
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %79
  %84 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %85 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i64 @atomic_read(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %100

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %79

97:                                               ; preds = %79
  %98 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %99 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %92, %18
  ret void
}

declare dso_local i32 @coresight_find_link_inport(%struct.coresight_device*, %struct.coresight_device*) #1

declare dso_local i32 @coresight_find_link_outport(%struct.coresight_device*, %struct.coresight_device*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local %struct.TYPE_6__* @link_ops(%struct.coresight_device*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
