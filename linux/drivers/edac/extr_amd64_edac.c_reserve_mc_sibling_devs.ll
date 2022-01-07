; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_reserve_mc_sibling_devs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_reserve_mc_sibling_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"F0 not found, device 0x%x (broken BIOS?)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"F6 not found: device 0x%x (broken BIOS?)\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"F0: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"F3: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"F6: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"F1 not found: device 0x%x (broken BIOS?)\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"F2 not found: device 0x%x (broken BIOS?)\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"F1: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"F2: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i32, i32)* @reserve_mc_sibling_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve_mc_sibling_devs(%struct.amd64_pvt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amd64_pvt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %9 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %80

12:                                               ; preds = %3
  %13 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %14 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %20 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call i8* @pci_get_related_function(i32 %17, i32 %18, %struct.TYPE_4__* %21)
  %23 = bitcast i8* %22 to %struct.TYPE_4__*
  %24 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %25 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %24, i32 0, i32 4
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %25, align 8
  %26 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %27 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %26, i32 0, i32 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %12
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @amd64_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %148

35:                                               ; preds = %12
  %36 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %37 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %43 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call i8* @pci_get_related_function(i32 %40, i32 %41, %struct.TYPE_4__* %44)
  %46 = bitcast i8* %45 to %struct.TYPE_4__*
  %47 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %48 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %47, i32 0, i32 3
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %48, align 8
  %49 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %50 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %35
  %54 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %55 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %54, i32 0, i32 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i32 @pci_dev_put(%struct.TYPE_4__* %56)
  %58 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %59 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %58, i32 0, i32 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @amd64_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %148

64:                                               ; preds = %35
  %65 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %66 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %65, i32 0, i32 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = call i32 @pci_name(%struct.TYPE_4__* %67)
  %69 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %71 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = call i32 @pci_name(%struct.TYPE_4__* %72)
  %74 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %76 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = call i32 @pci_name(%struct.TYPE_4__* %77)
  %79 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  store i32 0, i32* %4, align 4
  br label %148

80:                                               ; preds = %3
  %81 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %82 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %88 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = call i8* @pci_get_related_function(i32 %85, i32 %86, %struct.TYPE_4__* %89)
  %91 = bitcast i8* %90 to %struct.TYPE_4__*
  %92 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %93 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %92, i32 0, i32 2
  store %struct.TYPE_4__* %91, %struct.TYPE_4__** %93, align 8
  %94 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %95 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = icmp ne %struct.TYPE_4__* %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %80
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @amd64_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @ENODEV, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %148

103:                                              ; preds = %80
  %104 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %105 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %111 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = call i8* @pci_get_related_function(i32 %108, i32 %109, %struct.TYPE_4__* %112)
  %114 = bitcast i8* %113 to %struct.TYPE_4__*
  %115 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %116 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %115, i32 0, i32 1
  store %struct.TYPE_4__* %114, %struct.TYPE_4__** %116, align 8
  %117 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %118 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %117, i32 0, i32 1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = icmp ne %struct.TYPE_4__* %119, null
  br i1 %120, label %132, label %121

121:                                              ; preds = %103
  %122 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %123 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %122, i32 0, i32 2
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = call i32 @pci_dev_put(%struct.TYPE_4__* %124)
  %126 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %127 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %126, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %127, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @amd64_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @ENODEV, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %148

132:                                              ; preds = %103
  %133 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %134 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %133, i32 0, i32 2
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = call i32 @pci_name(%struct.TYPE_4__* %135)
  %137 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %136)
  %138 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %139 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %138, i32 0, i32 1
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = call i32 @pci_name(%struct.TYPE_4__* %140)
  %142 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %141)
  %143 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %144 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = call i32 @pci_name(%struct.TYPE_4__* %145)
  %147 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %132, %121, %98, %64, %53, %30
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i8* @pci_get_related_function(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @amd64_err(i8*, i32) #1

declare dso_local i32 @pci_dev_put(%struct.TYPE_4__*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32) #1

declare dso_local i32 @pci_name(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
