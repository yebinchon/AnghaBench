; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras_eeprom.c___encode_table_header_to_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras_eeprom.c___encode_table_header_to_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ras_eeprom_table_header = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ras_eeprom_table_header*, i8*)* @__encode_table_header_to_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__encode_table_header_to_buff(%struct.amdgpu_ras_eeprom_table_header* %0, i8* %1) #0 {
  %3 = alloca %struct.amdgpu_ras_eeprom_table_header*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store %struct.amdgpu_ras_eeprom_table_header* %0, %struct.amdgpu_ras_eeprom_table_header** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %5, align 8
  %8 = load %struct.amdgpu_ras_eeprom_table_header*, %struct.amdgpu_ras_eeprom_table_header** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ras_eeprom_table_header, %struct.amdgpu_ras_eeprom_table_header* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @cpu_to_le32(i32 %10)
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.amdgpu_ras_eeprom_table_header*, %struct.amdgpu_ras_eeprom_table_header** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_ras_eeprom_table_header, %struct.amdgpu_ras_eeprom_table_header* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cpu_to_le32(i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.amdgpu_ras_eeprom_table_header*, %struct.amdgpu_ras_eeprom_table_header** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_ras_eeprom_table_header, %struct.amdgpu_ras_eeprom_table_header* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cpu_to_le32(i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.amdgpu_ras_eeprom_table_header*, %struct.amdgpu_ras_eeprom_table_header** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ras_eeprom_table_header, %struct.amdgpu_ras_eeprom_table_header* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cpu_to_le32(i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.amdgpu_ras_eeprom_table_header*, %struct.amdgpu_ras_eeprom_table_header** %3, align 8
  %33 = getelementptr inbounds %struct.amdgpu_ras_eeprom_table_header, %struct.amdgpu_ras_eeprom_table_header* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  store i32 %35, i32* %37, align 4
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
