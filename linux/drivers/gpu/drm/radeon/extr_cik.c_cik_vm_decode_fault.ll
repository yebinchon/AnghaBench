; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_vm_decode_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_vm_decode_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@FAULT_VMID_MASK = common dso_local global i32 0, align 4
@FAULT_VMID_SHIFT = common dso_local global i32 0, align 4
@PROTECTIONS_MASK = common dso_local global i32 0, align 4
@PROTECTIONS_SHIFT = common dso_local global i32 0, align 4
@CHIP_HAWAII = common dso_local global i64 0, align 8
@HAWAII_MEMORY_CLIENT_ID_MASK = common dso_local global i32 0, align 4
@MEMORY_CLIENT_ID_SHIFT = common dso_local global i32 0, align 4
@MEMORY_CLIENT_ID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"VM fault (0x%02x, vmid %d) at page %u, %s from '%s' (0x%08x) (%d)\0A\00", align 1
@MEMORY_CLIENT_RW_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32, i32)* @cik_vm_decode_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_vm_decode_fault(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [5 x i8], align 1
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @FAULT_VMID_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @FAULT_VMID_SHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PROTECTIONS_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @PROTECTIONS_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds i8, i8* %23, i64 1
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  %32 = getelementptr inbounds i8, i8* %27, i64 1
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %32, align 1
  %37 = getelementptr inbounds i8, i8* %32, i64 1
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %37, align 1
  %41 = getelementptr inbounds i8, i8* %37, i64 1
  store i8 0, i8* %41, align 1
  %42 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CHIP_HAWAII, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @HAWAII_MEMORY_CLIENT_ID_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @MEMORY_CLIENT_ID_SHIFT, align 4
  %52 = ashr i32 %50, %51
  store i32 %52, i32* %9, align 4
  br label %59

53:                                               ; preds = %4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @MEMORY_CLIENT_ID_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @MEMORY_CLIENT_ID_SHIFT, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %53, %47
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @MEMORY_CLIENT_RW_MASK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %69 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32 %62, i8* %68, i8* %69, i32 %70, i32 %71)
  ret void
}

declare dso_local i32 @printk(i8*, i32, i32, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
