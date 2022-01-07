; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_release_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_release_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i32, i32, i64 }
%struct.TYPE_3__ = type { i8*, i32, i32, i64 }

@AM_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inf_hw*)* @release_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_io(%struct.inf_hw* %0) #0 {
  %2 = alloca %struct.inf_hw*, align 8
  store %struct.inf_hw* %0, %struct.inf_hw** %2, align 8
  %3 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %4 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %44

8:                                                ; preds = %1
  %9 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %10 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %16 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %20 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @release_mem_region(i32 %18, i32 %22)
  %24 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %25 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @iounmap(i64 %27)
  br label %39

29:                                               ; preds = %8
  %30 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %31 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %35 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @release_region(i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %29, %14
  %40 = load i8*, i8** @AM_NONE, align 8
  %41 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %42 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  br label %44

44:                                               ; preds = %39, %1
  %45 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %46 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %86

50:                                               ; preds = %44
  %51 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %52 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %58 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %62 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @release_mem_region(i32 %60, i32 %64)
  %66 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %67 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @iounmap(i64 %69)
  br label %81

71:                                               ; preds = %50
  %72 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %73 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %77 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @release_region(i32 %75, i32 %79)
  br label %81

81:                                               ; preds = %71, %56
  %82 = load i8*, i8** @AM_NONE, align 8
  %83 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %84 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  br label %86

86:                                               ; preds = %81, %44
  ret void
}

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
