; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_syncpt.c_host1x_syncpt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_syncpt.c_host1x_syncpt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { i32, %struct.host1x_syncpt_base*, %struct.host1x_syncpt*, i32, %struct.TYPE_2__*, i32 }
%struct.host1x_syncpt_base = type { i32 }
%struct.host1x_syncpt = type { i32, %struct.host1x* }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host1x_syncpt_init(%struct.host1x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x*, align 8
  %4 = alloca %struct.host1x_syncpt_base*, align 8
  %5 = alloca %struct.host1x_syncpt*, align 8
  %6 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %3, align 8
  %7 = load %struct.host1x*, %struct.host1x** %3, align 8
  %8 = getelementptr inbounds %struct.host1x, %struct.host1x* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.host1x*, %struct.host1x** %3, align 8
  %11 = getelementptr inbounds %struct.host1x, %struct.host1x* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @devm_kcalloc(i32 %9, i32 %14, i32 16, i32 %15)
  %17 = bitcast i8* %16 to %struct.host1x_syncpt*
  store %struct.host1x_syncpt* %17, %struct.host1x_syncpt** %5, align 8
  %18 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %19 = icmp ne %struct.host1x_syncpt* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %116

23:                                               ; preds = %1
  %24 = load %struct.host1x*, %struct.host1x** %3, align 8
  %25 = getelementptr inbounds %struct.host1x, %struct.host1x* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.host1x*, %struct.host1x** %3, align 8
  %28 = getelementptr inbounds %struct.host1x, %struct.host1x* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @devm_kcalloc(i32 %26, i32 %31, i32 4, i32 %32)
  %34 = bitcast i8* %33 to %struct.host1x_syncpt_base*
  store %struct.host1x_syncpt_base* %34, %struct.host1x_syncpt_base** %4, align 8
  %35 = load %struct.host1x_syncpt_base*, %struct.host1x_syncpt_base** %4, align 8
  %36 = icmp ne %struct.host1x_syncpt_base* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %116

40:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %68, %40
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.host1x*, %struct.host1x** %3, align 8
  %44 = getelementptr inbounds %struct.host1x, %struct.host1x* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ult i32 %42, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %51, i64 %53
  %55 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 8
  %56 = load %struct.host1x*, %struct.host1x** %3, align 8
  %57 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %57, i64 %59
  %61 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %60, i32 0, i32 1
  store %struct.host1x* %56, %struct.host1x** %61, align 8
  %62 = load %struct.host1x*, %struct.host1x** %3, align 8
  %63 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %63, i64 %65
  %67 = call i32 @host1x_hw_syncpt_assign_to_channel(%struct.host1x* %62, %struct.host1x_syncpt* %66, i32* null)
  br label %68

68:                                               ; preds = %49
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %41

71:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %87, %71
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.host1x*, %struct.host1x** %3, align 8
  %75 = getelementptr inbounds %struct.host1x, %struct.host1x* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ult i32 %73, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %72
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.host1x_syncpt_base*, %struct.host1x_syncpt_base** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.host1x_syncpt_base, %struct.host1x_syncpt_base* %82, i64 %84
  %86 = getelementptr inbounds %struct.host1x_syncpt_base, %struct.host1x_syncpt_base* %85, i32 0, i32 0
  store i32 %81, i32* %86, align 4
  br label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %6, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %72

90:                                               ; preds = %72
  %91 = load %struct.host1x*, %struct.host1x** %3, align 8
  %92 = getelementptr inbounds %struct.host1x, %struct.host1x* %91, i32 0, i32 3
  %93 = call i32 @mutex_init(i32* %92)
  %94 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %95 = load %struct.host1x*, %struct.host1x** %3, align 8
  %96 = getelementptr inbounds %struct.host1x, %struct.host1x* %95, i32 0, i32 2
  store %struct.host1x_syncpt* %94, %struct.host1x_syncpt** %96, align 8
  %97 = load %struct.host1x_syncpt_base*, %struct.host1x_syncpt_base** %4, align 8
  %98 = load %struct.host1x*, %struct.host1x** %3, align 8
  %99 = getelementptr inbounds %struct.host1x, %struct.host1x* %98, i32 0, i32 1
  store %struct.host1x_syncpt_base* %97, %struct.host1x_syncpt_base** %99, align 8
  %100 = load %struct.host1x*, %struct.host1x** %3, align 8
  %101 = call i32 @host1x_syncpt_restore(%struct.host1x* %100)
  %102 = load %struct.host1x*, %struct.host1x** %3, align 8
  %103 = call i32 @host1x_hw_syncpt_enable_protection(%struct.host1x* %102)
  %104 = load %struct.host1x*, %struct.host1x** %3, align 8
  %105 = call i32 @host1x_syncpt_alloc(%struct.host1x* %104, i32* null, i32 0)
  %106 = load %struct.host1x*, %struct.host1x** %3, align 8
  %107 = getelementptr inbounds %struct.host1x, %struct.host1x* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.host1x*, %struct.host1x** %3, align 8
  %109 = getelementptr inbounds %struct.host1x, %struct.host1x* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %90
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %116

115:                                              ; preds = %90
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %112, %37, %20
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @host1x_hw_syncpt_assign_to_channel(%struct.host1x*, %struct.host1x_syncpt*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @host1x_syncpt_restore(%struct.host1x*) #1

declare dso_local i32 @host1x_hw_syncpt_enable_protection(%struct.host1x*) #1

declare dso_local i32 @host1x_syncpt_alloc(%struct.host1x*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
