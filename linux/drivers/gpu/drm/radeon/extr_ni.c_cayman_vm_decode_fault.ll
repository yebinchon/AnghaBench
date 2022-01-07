; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_vm_decode_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_vm_decode_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@MEMORY_CLIENT_ID_MASK = common dso_local global i32 0, align 4
@MEMORY_CLIENT_ID_SHIFT = common dso_local global i32 0, align 4
@FAULT_VMID_MASK = common dso_local global i32 0, align 4
@FAULT_VMID_SHIFT = common dso_local global i32 0, align 4
@PROTECTIONS_MASK = common dso_local global i32 0, align 4
@PROTECTIONS_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"CB\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"CB_FMASK\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"CB_CMASK\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"CB_IMMED\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"DB\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"DB_HTILE\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"SX\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"DB_STEN\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"TC_TFETCH\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"TC_VFETCH\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"VC\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"CP\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"VGT\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"IH\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"RLC\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"HDP\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"VM fault (0x%02x, vmid %d) at page %u, %s from %s (%d)\0A\00", align 1
@MEMORY_CLIENT_RW_MASK = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"read\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cayman_vm_decode_fault(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MEMORY_CLIENT_ID_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @MEMORY_CLIENT_ID_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FAULT_VMID_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @FAULT_VMID_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PROTECTIONS_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @PROTECTIONS_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %45 [
    i32 32, label %27
    i32 16, label %27
    i32 96, label %27
    i32 80, label %27
    i32 160, label %27
    i32 144, label %27
    i32 224, label %27
    i32 208, label %27
    i32 33, label %28
    i32 17, label %28
    i32 97, label %28
    i32 81, label %28
    i32 161, label %28
    i32 145, label %28
    i32 225, label %28
    i32 209, label %28
    i32 34, label %29
    i32 18, label %29
    i32 98, label %29
    i32 82, label %29
    i32 162, label %29
    i32 146, label %29
    i32 226, label %29
    i32 210, label %29
    i32 35, label %30
    i32 19, label %30
    i32 99, label %30
    i32 83, label %30
    i32 163, label %30
    i32 147, label %30
    i32 227, label %30
    i32 211, label %30
    i32 36, label %31
    i32 20, label %31
    i32 100, label %31
    i32 84, label %31
    i32 164, label %31
    i32 148, label %31
    i32 228, label %31
    i32 212, label %31
    i32 37, label %32
    i32 21, label %32
    i32 101, label %32
    i32 85, label %32
    i32 165, label %32
    i32 149, label %32
    i32 229, label %32
    i32 213, label %32
    i32 38, label %33
    i32 22, label %33
    i32 102, label %33
    i32 86, label %33
    i32 166, label %33
    i32 150, label %33
    i32 230, label %33
    i32 214, label %33
    i32 39, label %34
    i32 23, label %34
    i32 103, label %34
    i32 87, label %34
    i32 167, label %34
    i32 151, label %34
    i32 231, label %34
    i32 215, label %34
    i32 40, label %35
    i32 24, label %35
    i32 104, label %35
    i32 88, label %35
    i32 232, label %35
    i32 216, label %35
    i32 168, label %35
    i32 152, label %35
    i32 41, label %36
    i32 25, label %36
    i32 105, label %36
    i32 89, label %36
    i32 233, label %36
    i32 217, label %36
    i32 169, label %36
    i32 153, label %36
    i32 42, label %37
    i32 26, label %37
    i32 106, label %37
    i32 90, label %37
    i32 234, label %37
    i32 218, label %37
    i32 170, label %37
    i32 154, label %37
    i32 112, label %38
    i32 113, label %39
    i32 114, label %39
    i32 115, label %40
    i32 178, label %41
    i32 51, label %42
    i32 55, label %43
    i32 56, label %44
  ]

27:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %46

28:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %46

29:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %46

30:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %46

31:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %46

32:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %46

33:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %46

34:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  br label %46

35:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %46

36:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %46

37:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %46

38:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  br label %46

39:                                               ; preds = %3, %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %10, align 8
  br label %46

40:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %10, align 8
  br label %46

41:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8** %10, align 8
  br label %46

42:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %10, align 8
  br label %46

43:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8** %10, align 8
  br label %46

44:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %10, align 8
  br label %46

45:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8** %10, align 8
  br label %46

46:                                               ; preds = %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @MEMORY_CLIENT_RW_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 %47, i32 %48, i32 %49, i8* %55, i8* %56, i32 %57)
  ret void
}

declare dso_local i32 @printk(i8*, i32, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
