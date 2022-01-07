; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_debug.c_show_syncpts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_debug.c_show_syncpts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.output = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"---- syncpts ----\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"id %u (%s) min %d max %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"waitbase id %u val %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x*, %struct.output*)* @show_syncpts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_syncpts(%struct.host1x* %0, %struct.output* %1) #0 {
  %3 = alloca %struct.host1x*, align 8
  %4 = alloca %struct.output*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.host1x* %0, %struct.host1x** %3, align 8
  store %struct.output* %1, %struct.output** %4, align 8
  %9 = load %struct.output*, %struct.output** %4, align 8
  %10 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %51, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.host1x*, %struct.host1x** %3, align 8
  %14 = call i32 @host1x_syncpt_nb_pts(%struct.host1x* %13)
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %11
  %17 = load %struct.host1x*, %struct.host1x** %3, align 8
  %18 = getelementptr inbounds %struct.host1x, %struct.host1x* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = call i64 @host1x_syncpt_read_max(%struct.TYPE_4__* %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.host1x*, %struct.host1x** %3, align 8
  %25 = getelementptr inbounds %struct.host1x, %struct.host1x* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = call i64 @host1x_syncpt_load(%struct.TYPE_4__* %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %16
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %51

37:                                               ; preds = %33, %16
  %38 = load %struct.output*, %struct.output** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.host1x*, %struct.host1x** %3, align 8
  %41 = getelementptr inbounds %struct.host1x, %struct.host1x* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %47, i64 %48, i64 %49)
  br label %51

51:                                               ; preds = %37, %36
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %11

54:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %76, %54
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.host1x*, %struct.host1x** %3, align 8
  %58 = call i32 @host1x_syncpt_nb_bases(%struct.host1x* %57)
  %59 = icmp ult i32 %56, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %55
  %61 = load %struct.host1x*, %struct.host1x** %3, align 8
  %62 = getelementptr inbounds %struct.host1x, %struct.host1x* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = call i64 @host1x_syncpt_load_wait_base(%struct.TYPE_4__* %66)
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load %struct.output*, %struct.output** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i64, i64* %8, align 8
  %74 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %72, i64 %73)
  br label %75

75:                                               ; preds = %70, %60
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %55

79:                                               ; preds = %55
  %80 = load %struct.output*, %struct.output** %4, align 8
  %81 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @host1x_debug_output(%struct.output*, i8*, ...) #1

declare dso_local i32 @host1x_syncpt_nb_pts(%struct.host1x*) #1

declare dso_local i64 @host1x_syncpt_read_max(%struct.TYPE_4__*) #1

declare dso_local i64 @host1x_syncpt_load(%struct.TYPE_4__*) #1

declare dso_local i32 @host1x_syncpt_nb_bases(%struct.host1x*) #1

declare dso_local i64 @host1x_syncpt_load_wait_base(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
