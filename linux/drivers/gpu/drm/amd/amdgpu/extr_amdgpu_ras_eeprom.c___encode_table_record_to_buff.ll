; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras_eeprom.c___encode_table_record_to_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras_eeprom.c___encode_table_record_to_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ras_eeprom_control = type { i32 }
%struct.eeprom_table_record = type { i8, i8, i32, i32, i8, i8, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ras_eeprom_control*, %struct.eeprom_table_record*, i8*)* @__encode_table_record_to_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__encode_table_record_to_buff(%struct.amdgpu_ras_eeprom_control* %0, %struct.eeprom_table_record* %1, i8* %2) #0 {
  %4 = alloca %struct.amdgpu_ras_eeprom_control*, align 8
  %5 = alloca %struct.eeprom_table_record*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_ras_eeprom_control* %0, %struct.amdgpu_ras_eeprom_control** %4, align 8
  store %struct.eeprom_table_record* %1, %struct.eeprom_table_record** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.eeprom_table_record*, %struct.eeprom_table_record** %5, align 8
  %10 = getelementptr inbounds %struct.eeprom_table_record, %struct.eeprom_table_record* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  store i8 %11, i8* %16, align 1
  %17 = load %struct.eeprom_table_record*, %struct.eeprom_table_record** %5, align 8
  %18 = getelementptr inbounds %struct.eeprom_table_record, %struct.eeprom_table_record* %17, i32 0, i32 1
  %19 = load i8, i8* %18, align 1
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  store i8 %19, i8* %24, align 1
  %25 = load %struct.eeprom_table_record*, %struct.eeprom_table_record** %5, align 8
  %26 = getelementptr inbounds %struct.eeprom_table_record, %struct.eeprom_table_record* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cpu_to_le64(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = call i32 @memcpy(i8* %32, i32* %7, i32 8)
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 8
  store i32 %35, i32* %8, align 4
  %36 = load %struct.eeprom_table_record*, %struct.eeprom_table_record** %5, align 8
  %37 = getelementptr inbounds %struct.eeprom_table_record, %struct.eeprom_table_record* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = and i64 %39, 281474976710655
  %41 = trunc i64 %40 to i32
  %42 = call i32 @cpu_to_le64(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = call i32 @memcpy(i8* %46, i32* %7, i32 6)
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 6
  store i32 %49, i32* %8, align 4
  %50 = load %struct.eeprom_table_record*, %struct.eeprom_table_record** %5, align 8
  %51 = getelementptr inbounds %struct.eeprom_table_record, %struct.eeprom_table_record* %50, i32 0, i32 4
  %52 = load i8, i8* %51, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 %52, i8* %57, align 1
  %58 = load %struct.eeprom_table_record*, %struct.eeprom_table_record** %5, align 8
  %59 = getelementptr inbounds %struct.eeprom_table_record, %struct.eeprom_table_record* %58, i32 0, i32 5
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8 %60, i8* %65, align 1
  %66 = load %struct.eeprom_table_record*, %struct.eeprom_table_record** %5, align 8
  %67 = getelementptr inbounds %struct.eeprom_table_record, %struct.eeprom_table_record* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = and i64 %69, 281474976710655
  %71 = trunc i64 %70 to i32
  %72 = call i32 @cpu_to_le64(i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = call i32 @memcpy(i8* %76, i32* %7, i32 6)
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
