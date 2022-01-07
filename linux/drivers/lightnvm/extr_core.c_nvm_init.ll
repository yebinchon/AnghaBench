; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_dev = type { %struct.nvm_geo, i32, %struct.TYPE_2__* }
%struct.nvm_geo = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 (%struct.nvm_dev*)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"device could not be identified\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"ver:%u.%u nvm_vendor:%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"could not initialize core structures.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"registered %s [%u/%u/%u/%u/%u]\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to initialize nvm\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_dev*)* @nvm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvm_init(%struct.nvm_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvm_dev*, align 8
  %4 = alloca %struct.nvm_geo*, align 8
  %5 = alloca i32, align 4
  store %struct.nvm_dev* %0, %struct.nvm_dev** %3, align 8
  %6 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %7 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %6, i32 0, i32 0
  store %struct.nvm_geo* %7, %struct.nvm_geo** %4, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %11 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64 (%struct.nvm_dev*)*, i64 (%struct.nvm_dev*)** %13, align 8
  %15 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %16 = call i64 %14(%struct.nvm_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %62

20:                                               ; preds = %1
  %21 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %22 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %25 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %28 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %26, i32 %29)
  %31 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %32 = call i32 @nvm_core_init(%struct.nvm_dev* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %62

37:                                               ; preds = %20
  %38 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %39 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %42 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %46 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %50 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %54 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %58 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 %44, i32 %48, i32 %52, i32 %56, i32 %60)
  store i32 0, i32* %2, align 4
  br label %65

62:                                               ; preds = %35, %18
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %37
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @nvm_core_init(%struct.nvm_dev*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
