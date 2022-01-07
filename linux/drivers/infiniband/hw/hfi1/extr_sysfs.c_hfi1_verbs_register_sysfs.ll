; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sysfs.c_hfi1_verbs_register_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sysfs.c_hfi1_verbs_register_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.hfi1_devdata = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ib_device }
%struct.ib_device = type { %struct.device }
%struct.device = type { i32 }

@sde_ktype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sdma%d\00", align 1
@sde_attribs = common dso_local global %struct.TYPE_9__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_verbs_register_sysfs(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %10 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.ib_device* %12, %struct.ib_device** %4, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %14 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %65, %1
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %18 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %15
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %23 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @kobject_init_and_add(i32* %28, i32* @sde_ktype, i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %69

36:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %61, %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sde_attribs, align 8
  %40 = call i32 @ARRAY_SIZE(%struct.TYPE_9__** %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %37
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %44 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sde_attribs, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %50, i64 %52
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = call i32 @sysfs_create_file(i32* %49, i32* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %42
  br label %69

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %37

64:                                               ; preds = %37
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %15

68:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %90

69:                                               ; preds = %59, %35
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %85, %69
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %73 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %78 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = call i32 @kobject_del(i32* %83)
  br label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %70

88:                                               ; preds = %70
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %68
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__**) #1

declare dso_local i32 @sysfs_create_file(i32*, i32*) #1

declare dso_local i32 @kobject_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
