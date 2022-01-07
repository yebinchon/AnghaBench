; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_mmu.c_panfrost_mmu_irq_handler_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_mmu.c_panfrost_mmu_irq_handler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { i32 }

@MMU_INT_RAWSTAT = common dso_local global i32 0, align 4
@MMU_INT_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [165 x i8] c"Unhandled Page fault in AS%d at VA 0x%016llX\0AReason: %s\0Araw fault status: 0x%X\0Adecoded fault status: %s\0Aexception type 0x%X: %s\0Aaccess type 0x%X: %s\0Asource id 0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TODO\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"DECODER FAULT\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"SLAVE FAULT\00", align 1
@MMU_INT_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @panfrost_mmu_irq_handler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_mmu_irq_handler_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.panfrost_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.panfrost_device*
  store %struct.panfrost_device* %16, %struct.panfrost_device** %5, align 8
  %17 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %18 = load i32, i32* @MMU_INT_RAWSTAT, align 4
  %19 = call i32 @mmu_read(%struct.panfrost_device* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %121, %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %124

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 16
  %28 = call i32 @BIT(i32 %27)
  %29 = or i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %121

35:                                               ; preds = %23
  %36 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @AS_FAULTSTATUS(i32 %37)
  %39 = call i32 @mmu_read(%struct.panfrost_device* %36, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @AS_FAULTADDRESS_LO(i32 %41)
  %43 = call i32 @mmu_read(%struct.panfrost_device* %40, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @AS_FAULTADDRESS_HI(i32 %45)
  %47 = call i32 @mmu_read(%struct.panfrost_device* %44, i32 %46)
  %48 = shl i32 %47, 32
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 255
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 3
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %11, align 4
  %57 = ashr i32 %56, 16
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @BIT(i32 %61)
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %35
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 193
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %12, align 4
  %69 = icmp sgt i32 %68, 196
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i1 [ true, %64 ], [ %69, %67 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @WARN_ON(i32 %72)
  %74 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @panfrost_mmu_map_fault_addr(%struct.panfrost_device* %74, i32 %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %70
  %81 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %82 = load i32, i32* @MMU_INT_CLEAR, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @BIT(i32 %83)
  %85 = call i32 @mmu_write(%struct.panfrost_device* %81, i32 %82, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %121

90:                                               ; preds = %70
  br label %91

91:                                               ; preds = %90, %35
  %92 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %93 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = and i32 %98, 1024
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @panfrost_exception_name(%struct.panfrost_device* %104, i32 %105)
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @access_type_name(%struct.panfrost_device* %108, i32 %109)
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %97, i8* %102, i32 %103, i32 %106, i32 %107, i32 %110, i32 %111)
  %113 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %114 = load i32, i32* @MMU_INT_CLEAR, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @mmu_write(%struct.panfrost_device* %113, i32 %114, i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %6, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %91, %80, %34
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %20

124:                                              ; preds = %20
  %125 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %126 = load i32, i32* @MMU_INT_MASK, align 4
  %127 = call i32 @mmu_write(%struct.panfrost_device* %125, i32 %126, i32 -1)
  %128 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %128
}

declare dso_local i32 @mmu_read(%struct.panfrost_device*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @AS_FAULTSTATUS(i32) #1

declare dso_local i32 @AS_FAULTADDRESS_LO(i32) #1

declare dso_local i32 @AS_FAULTADDRESS_HI(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @panfrost_mmu_map_fault_addr(%struct.panfrost_device*, i32, i32) #1

declare dso_local i32 @mmu_write(%struct.panfrost_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i8*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @panfrost_exception_name(%struct.panfrost_device*, i32) #1

declare dso_local i32 @access_type_name(%struct.panfrost_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
