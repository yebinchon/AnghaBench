; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_pmac.c_pmac_ide_cable_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_pmac.c_pmac_ide_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"cable-type\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"80-\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"PowerBook\00", align 1
@ATA_CBL_PATA40_SHORT = common dso_local global i32 0, align 4
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"K2-UATA\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"shasta-ata\00", align 1
@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @pmac_ide_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmac_ide_cable_detect(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_7__* @dev_get_drvdata(i32 %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = call i8* @of_get_property(%struct.device_node* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %18, i8** %6, align 8
  %19 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %19, %struct.device_node** %7, align 8
  %20 = load %struct.device_node*, %struct.device_node** %7, align 8
  %21 = call i8* @of_get_property(%struct.device_node* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %21, i8** %8, align 8
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = call i32 @of_node_put(%struct.device_node* %22)
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @ATA_CBL_PATA40_SHORT, align 4
  store i32 %35, i32* %2, align 4
  br label %50

36:                                               ; preds = %30
  %37 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %37, i32* %2, align 4
  br label %50

38:                                               ; preds = %26, %1
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  %40 = call i64 @of_device_is_compatible(%struct.device_node* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load %struct.device_node*, %struct.device_node** %5, align 8
  %44 = call i64 @of_device_is_compatible(%struct.device_node* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %38
  %47 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %47, i32* %2, align 4
  br label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @ATA_CBL_PATA40, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %46, %36, %34
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_7__* @dev_get_drvdata(i32) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
