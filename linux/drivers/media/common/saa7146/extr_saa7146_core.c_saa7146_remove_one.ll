; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_core.c_saa7146_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_core.c_saa7146_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.saa7146_dev = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 (%struct.saa7146_dev*)* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.anon = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"dev:%p\0A\00", align 1
@MC1 = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@SAA7146_RPS_MEM = common dso_local global i32 0, align 4
@saa7146_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @saa7146_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa7146_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.v4l2_device*, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca [4 x %struct.anon], align 16
  %6 = alloca %struct.anon*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.v4l2_device* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.v4l2_device* %8, %struct.v4l2_device** %3, align 8
  %9 = load %struct.v4l2_device*, %struct.v4l2_device** %3, align 8
  %10 = call %struct.saa7146_dev* @to_saa7146_dev(%struct.v4l2_device* %9)
  store %struct.saa7146_dev* %10, %struct.saa7146_dev** %4, align 8
  %11 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %5, i64 0, i64 0
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %14 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to i8*
  store i8* %17, i8** %12, align 16
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %19 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %20 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %18, align 8
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %11, i64 1
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 0
  %25 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %26 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = bitcast i32* %28 to i8*
  store i8* %29, i8** %24, align 16
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 1
  %31 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %32 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %30, align 8
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %23, i64 1
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 0
  %37 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %38 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = bitcast i32* %40 to i8*
  store i8* %41, i8** %36, align 16
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 1
  %43 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %44 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %42, align 8
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %35, i64 1
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 0
  store i8* null, i8** %48, align 16
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 1
  store i32 0, i32* %49, align 8
  %50 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %51 = call i32 @DEB_EE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %50)
  %52 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %53 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32 (%struct.saa7146_dev*)*, i32 (%struct.saa7146_dev*)** %55, align 8
  %57 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %58 = call i32 %56(%struct.saa7146_dev* %57)
  %59 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %60 = load i32, i32* @MC1, align 4
  %61 = call i32 @saa7146_write(%struct.saa7146_dev* %59, i32 %60, i32 16711680)
  %62 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %63 = load i32, i32* @IER, align 4
  %64 = call i32 @saa7146_write(%struct.saa7146_dev* %62, i32 %63, i32 0)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %69 = call i32 @free_irq(i32 %67, %struct.saa7146_dev* %68)
  %70 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %5, i64 0, i64 0
  store %struct.anon* %70, %struct.anon** %6, align 8
  br label %71

71:                                               ; preds = %86, %1
  %72 = load %struct.anon*, %struct.anon** %6, align 8
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %78 = load i32, i32* @SAA7146_RPS_MEM, align 4
  %79 = load %struct.anon*, %struct.anon** %6, align 8
  %80 = getelementptr inbounds %struct.anon, %struct.anon* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.anon*, %struct.anon** %6, align 8
  %83 = getelementptr inbounds %struct.anon, %struct.anon* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @pci_free_consistent(%struct.pci_dev* %77, i32 %78, i8* %81, i32 %84)
  br label %86

86:                                               ; preds = %76
  %87 = load %struct.anon*, %struct.anon** %6, align 8
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %87, i32 1
  store %struct.anon* %88, %struct.anon** %6, align 8
  br label %71

89:                                               ; preds = %71
  %90 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %91 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @iounmap(i32 %92)
  %94 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %95 = call i32 @pci_release_region(%struct.pci_dev* %94, i32 0)
  %96 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %97 = call i32 @pci_disable_device(%struct.pci_dev* %96)
  %98 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %99 = call i32 @kfree(%struct.saa7146_dev* %98)
  %100 = load i32, i32* @saa7146_num, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* @saa7146_num, align 4
  ret void
}

declare dso_local %struct.v4l2_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.saa7146_dev* @to_saa7146_dev(%struct.v4l2_device*) #1

declare dso_local i32 @DEB_EE(i8*, %struct.saa7146_dev*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.saa7146_dev*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i8*, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.saa7146_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
