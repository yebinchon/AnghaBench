; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-ff.c_make_condition_modifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-ff.c_make_condition_modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iforce = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.resource = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@FF_CMD_CONDITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"condition\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iforce*, %struct.resource*, i32, i32, i32, i32, i32, i32, i32)* @make_condition_modifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_condition_modifier(%struct.iforce* %0, %struct.resource* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.iforce*, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [10 x i8], align 1
  store %struct.iforce* %0, %struct.iforce** %11, align 8
  store %struct.resource* %1, %struct.resource** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %9
  %24 = load %struct.iforce*, %struct.iforce** %11, align 8
  %25 = getelementptr inbounds %struct.iforce, %struct.iforce* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.iforce*, %struct.iforce** %11, align 8
  %28 = getelementptr inbounds %struct.iforce, %struct.iforce* %27, i32 0, i32 1
  %29 = load %struct.resource*, %struct.resource** %12, align 8
  %30 = load %struct.iforce*, %struct.iforce** %11, align 8
  %31 = getelementptr inbounds %struct.iforce, %struct.iforce* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iforce*, %struct.iforce** %11, align 8
  %35 = getelementptr inbounds %struct.iforce, %struct.iforce* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @allocate_resource(%struct.TYPE_2__* %28, %struct.resource* %29, i32 8, i32 %33, i32 %37, i64 2, i32* null, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %23
  %41 = load %struct.iforce*, %struct.iforce** %11, align 8
  %42 = getelementptr inbounds %struct.iforce, %struct.iforce* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* @ENOSPC, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %107

46:                                               ; preds = %23
  %47 = load %struct.iforce*, %struct.iforce** %11, align 8
  %48 = getelementptr inbounds %struct.iforce, %struct.iforce* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %46, %9
  %51 = load %struct.resource*, %struct.resource** %12, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call zeroext i8 @LO(i32 %53)
  %55 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 0
  store i8 %54, i8* %55, align 1
  %56 = load %struct.resource*, %struct.resource** %12, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call zeroext i8 @HI(i32 %58)
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 1
  store i8 %59, i8* %60, align 1
  %61 = load i32, i32* %16, align 4
  %62 = mul nsw i32 100, %61
  %63 = ashr i32 %62, 15
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 2
  store i8 %64, i8* %65, align 1
  %66 = load i32, i32* %17, align 4
  %67 = mul nsw i32 100, %66
  %68 = ashr i32 %67, 15
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 3
  store i8 %69, i8* %70, align 1
  %71 = load i32, i32* %19, align 4
  %72 = mul nsw i32 500, %71
  %73 = ashr i32 %72, 15
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %19, align 4
  %75 = call zeroext i8 @LO(i32 %74)
  %76 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 4
  store i8 %75, i8* %76, align 1
  %77 = load i32, i32* %19, align 4
  %78 = call zeroext i8 @HI(i32 %77)
  %79 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 5
  store i8 %78, i8* %79, align 1
  %80 = load i32, i32* %18, align 4
  %81 = mul nsw i32 1000, %80
  %82 = ashr i32 %81, 16
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %18, align 4
  %84 = call zeroext i8 @LO(i32 %83)
  %85 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 6
  store i8 %84, i8* %85, align 1
  %86 = load i32, i32* %18, align 4
  %87 = call zeroext i8 @HI(i32 %86)
  %88 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 7
  store i8 %87, i8* %88, align 1
  %89 = load i32, i32* %14, align 4
  %90 = mul nsw i32 100, %89
  %91 = ashr i32 %90, 16
  %92 = trunc i32 %91 to i8
  %93 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 8
  store i8 %92, i8* %93, align 1
  %94 = load i32, i32* %15, align 4
  %95 = mul nsw i32 100, %94
  %96 = ashr i32 %95, 16
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 9
  store i8 %97, i8* %98, align 1
  %99 = load %struct.iforce*, %struct.iforce** %11, align 8
  %100 = load i32, i32* @FF_CMD_CONDITION, align 4
  %101 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 0
  %102 = call i32 @iforce_send_packet(%struct.iforce* %99, i32 %100, i8* %101)
  %103 = load %struct.iforce*, %struct.iforce** %11, align 8
  %104 = load i32, i32* @FF_CMD_CONDITION, align 4
  %105 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 0
  %106 = call i32 @iforce_dump_packet(%struct.iforce* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %104, i8* %105)
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %50, %40
  %108 = load i32, i32* %10, align 4
  ret i32 %108
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @allocate_resource(%struct.TYPE_2__*, %struct.resource*, i32, i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local zeroext i8 @LO(i32) #1

declare dso_local zeroext i8 @HI(i32) #1

declare dso_local i32 @iforce_send_packet(%struct.iforce*, i32, i8*) #1

declare dso_local i32 @iforce_dump_packet(%struct.iforce*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
