; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_persistent_prepare_merge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_persistent_prepare_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_exception_store = type { i32 }
%struct.pstore = type { i32, i32, i32, i32 }
%struct.core_exception = type { i32, i32 }

@REQ_OP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_exception_store*, i32*, i32*)* @persistent_prepare_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @persistent_prepare_merge(%struct.dm_exception_store* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_exception_store*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pstore*, align 8
  %9 = alloca %struct.core_exception, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dm_exception_store* %0, %struct.dm_exception_store** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.dm_exception_store*, %struct.dm_exception_store** %5, align 8
  %13 = call %struct.pstore* @get_info(%struct.dm_exception_store* %12)
  store %struct.pstore* %13, %struct.pstore** %8, align 8
  %14 = load %struct.pstore*, %struct.pstore** %8, align 8
  %15 = getelementptr inbounds %struct.pstore, %struct.pstore* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %3
  %19 = load %struct.pstore*, %struct.pstore** %8, align 8
  %20 = getelementptr inbounds %struct.pstore, %struct.pstore* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %98

24:                                               ; preds = %18
  %25 = load %struct.pstore*, %struct.pstore** %8, align 8
  %26 = getelementptr inbounds %struct.pstore, %struct.pstore* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.pstore*, %struct.pstore** %8, align 8
  %30 = load i32, i32* @REQ_OP_READ, align 4
  %31 = call i32 @area_io(%struct.pstore* %29, i32 %30, i32 0)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %98

36:                                               ; preds = %24
  %37 = load %struct.pstore*, %struct.pstore** %8, align 8
  %38 = getelementptr inbounds %struct.pstore, %struct.pstore* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pstore*, %struct.pstore** %8, align 8
  %41 = getelementptr inbounds %struct.pstore, %struct.pstore* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %3
  %43 = load %struct.pstore*, %struct.pstore** %8, align 8
  %44 = load %struct.pstore*, %struct.pstore** %8, align 8
  %45 = getelementptr inbounds %struct.pstore, %struct.pstore* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pstore*, %struct.pstore** %8, align 8
  %48 = getelementptr inbounds %struct.pstore, %struct.pstore* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @read_exception(%struct.pstore* %43, i32 %46, i32 %50, %struct.core_exception* %9)
  %52 = getelementptr inbounds %struct.core_exception, %struct.core_exception* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.core_exception, %struct.core_exception* %9, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  store i32 1, i32* %10, align 4
  br label %58

58:                                               ; preds = %93, %42
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.pstore*, %struct.pstore** %8, align 8
  %61 = getelementptr inbounds %struct.pstore, %struct.pstore* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %58
  %65 = load %struct.pstore*, %struct.pstore** %8, align 8
  %66 = load %struct.pstore*, %struct.pstore** %8, align 8
  %67 = getelementptr inbounds %struct.pstore, %struct.pstore* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pstore*, %struct.pstore** %8, align 8
  %70 = getelementptr inbounds %struct.pstore, %struct.pstore* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %72, %73
  %75 = call i32 @read_exception(%struct.pstore* %65, i32 %68, i32 %74, %struct.core_exception* %9)
  %76 = getelementptr inbounds %struct.core_exception, %struct.core_exception* %9, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %79, %80
  %82 = icmp ne i32 %77, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %64
  %84 = getelementptr inbounds %struct.core_exception, %struct.core_exception* %9, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 %87, %88
  %90 = icmp ne i32 %85, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %83, %64
  br label %96

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %58

96:                                               ; preds = %91, %58
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %34, %23
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.pstore* @get_info(%struct.dm_exception_store*) #1

declare dso_local i32 @area_io(%struct.pstore*, i32, i32) #1

declare dso_local i32 @read_exception(%struct.pstore*, i32, i32, %struct.core_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
