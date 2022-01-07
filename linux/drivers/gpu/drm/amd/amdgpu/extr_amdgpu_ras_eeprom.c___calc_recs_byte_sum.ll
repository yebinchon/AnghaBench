; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras_eeprom.c___calc_recs_byte_sum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras_eeprom.c___calc_recs_byte_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_table_record = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.eeprom_table_record*, i32)* @__calc_recs_byte_sum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @__calc_recs_byte_sum(%struct.eeprom_table_record* %0, i32 %1) #0 {
  %3 = alloca %struct.eeprom_table_record*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.eeprom_table_record*, align 8
  store %struct.eeprom_table_record* %0, %struct.eeprom_table_record** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 0, i8* %7, align 1
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %38, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load %struct.eeprom_table_record*, %struct.eeprom_table_record** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.eeprom_table_record, %struct.eeprom_table_record* %14, i64 %16
  store %struct.eeprom_table_record* %17, %struct.eeprom_table_record** %8, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %34, %13
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 4
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.eeprom_table_record*, %struct.eeprom_table_record** %8, align 8
  %24 = bitcast %struct.eeprom_table_record* %23 to i8*
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %31, %29
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %7, align 1
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %18

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %9

41:                                               ; preds = %9
  %42 = load i8, i8* %7, align 1
  ret i8 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
