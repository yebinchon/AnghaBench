; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_main.c_mthca_load_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_main.c_mthca_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Couldn't allocate FW area, aborting.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"MAP_FA command returned %d, aborting.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"RUN_FW command returned %d, aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*)* @mthca_load_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_load_fw(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %5 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %6 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_HIGHUSER, align 4
  %12 = load i32, i32* @__GFP_NOWARN, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @mthca_alloc_icm(%struct.mthca_dev* %5, i32 %10, i32 %13, i32 0)
  %15 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %27 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %66

30:                                               ; preds = %1
  %31 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mthca_MAP_FA(%struct.mthca_dev* %31, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %57

44:                                               ; preds = %30
  %45 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %46 = call i32 @mthca_RUN_FW(%struct.mthca_dev* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %54

53:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %66

54:                                               ; preds = %49
  %55 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %56 = call i32 @mthca_UNMAP_FA(%struct.mthca_dev* %55)
  br label %57

57:                                               ; preds = %54, %40
  %58 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %59 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %60 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mthca_free_icm(%struct.mthca_dev* %58, i32 %63, i32 0)
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %57, %53, %25
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @mthca_alloc_icm(%struct.mthca_dev*, i32, i32, i32) #1

declare dso_local i32 @mthca_err(%struct.mthca_dev*, i8*, ...) #1

declare dso_local i32 @mthca_MAP_FA(%struct.mthca_dev*, i32) #1

declare dso_local i32 @mthca_RUN_FW(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_UNMAP_FA(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_free_icm(%struct.mthca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
