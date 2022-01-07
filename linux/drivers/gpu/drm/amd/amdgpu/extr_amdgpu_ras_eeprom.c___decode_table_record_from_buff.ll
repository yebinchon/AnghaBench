; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras_eeprom.c___decode_table_record_from_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras_eeprom.c___decode_table_record_from_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ras_eeprom_control = type { i32 }
%struct.eeprom_table_record = type { i8, i8, i32, i32, i8, i8, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ras_eeprom_control*, %struct.eeprom_table_record*, i8*)* @__decode_table_record_from_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__decode_table_record_from_buff(%struct.amdgpu_ras_eeprom_control* %0, %struct.eeprom_table_record* %1, i8* %2) #0 {
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
  %9 = load i8*, i8** %6, align 8
  %10 = load i32, i32* %8, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %8, align 4
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = load %struct.eeprom_table_record*, %struct.eeprom_table_record** %5, align 8
  %16 = getelementptr inbounds %struct.eeprom_table_record, %struct.eeprom_table_record* %15, i32 0, i32 0
  store i8 %14, i8* %16, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %8, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = load %struct.eeprom_table_record*, %struct.eeprom_table_record** %5, align 8
  %24 = getelementptr inbounds %struct.eeprom_table_record, %struct.eeprom_table_record* %23, i32 0, i32 1
  store i8 %22, i8* %24, align 1
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = call i32 @memcpy(i32* %7, i8* %28, i32 8)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @le64_to_cpu(i32 %30)
  %32 = load %struct.eeprom_table_record*, %struct.eeprom_table_record** %5, align 8
  %33 = getelementptr inbounds %struct.eeprom_table_record, %struct.eeprom_table_record* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 8
  store i32 %35, i32* %8, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = call i32 @memcpy(i32* %7, i8* %39, i32 6)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @le64_to_cpu(i32 %41)
  %43 = sext i32 %42 to i64
  %44 = and i64 %43, 281474976710655
  %45 = trunc i64 %44 to i32
  %46 = load %struct.eeprom_table_record*, %struct.eeprom_table_record** %5, align 8
  %47 = getelementptr inbounds %struct.eeprom_table_record, %struct.eeprom_table_record* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
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
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = call i32 @memcpy(i32* %7, i8* %69, i32 6)
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @le64_to_cpu(i32 %71)
  %73 = sext i32 %72 to i64
  %74 = and i64 %73, 281474976710655
  %75 = trunc i64 %74 to i32
  %76 = load %struct.eeprom_table_record*, %struct.eeprom_table_record** %5, align 8
  %77 = getelementptr inbounds %struct.eeprom_table_record, %struct.eeprom_table_record* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
