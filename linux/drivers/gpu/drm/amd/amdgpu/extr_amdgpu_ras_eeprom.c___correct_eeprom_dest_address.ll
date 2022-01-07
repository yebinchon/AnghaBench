; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras_eeprom.c___correct_eeprom_dest_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras_eeprom.c___correct_eeprom_dest_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EEPROM_TABLE_RECORD_SIZE = common dso_local global i32 0, align 4
@EEPROM_SIZE_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Reached end of EEPROM memory, jumping to 0 and overriding old record\00", align 1
@EEPROM_RECORD_START = common dso_local global i32 0, align 4
@EEPROM_ADDR_MSB_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Reached end of EEPROM memory page, jumping to next: %lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__correct_eeprom_dest_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__correct_eeprom_dest_address(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @EEPROM_TABLE_RECORD_SIZE, align 4
  %7 = add nsw i32 %5, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EEPROM_SIZE_BYTES, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 @DRM_INFO(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EEPROM_RECORD_START, align 4
  store i32 %13, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @EEPROM_ADDR_MSB_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @EEPROM_ADDR_MSB_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @EEPROM_ADDR_MSB_MASK, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @EEPROM_ADDR_MSB_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; preds = %14
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %22, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
