; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-powernv.c_setup_indirect_dde.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-powernv.c_setup_indirect_dde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_descriptor_entry = type { i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_descriptor_entry*, %struct.data_descriptor_entry*, i32, i32)* @setup_indirect_dde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_indirect_dde(%struct.data_descriptor_entry* %0, %struct.data_descriptor_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.data_descriptor_entry*, align 8
  %6 = alloca %struct.data_descriptor_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.data_descriptor_entry* %0, %struct.data_descriptor_entry** %5, align 8
  store %struct.data_descriptor_entry* %1, %struct.data_descriptor_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.data_descriptor_entry*, %struct.data_descriptor_entry** %5, align 8
  %10 = getelementptr inbounds %struct.data_descriptor_entry, %struct.data_descriptor_entry* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.data_descriptor_entry*, %struct.data_descriptor_entry** %5, align 8
  %13 = getelementptr inbounds %struct.data_descriptor_entry, %struct.data_descriptor_entry* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.data_descriptor_entry*, %struct.data_descriptor_entry** %5, align 8
  %15 = getelementptr inbounds %struct.data_descriptor_entry, %struct.data_descriptor_entry* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @cpu_to_be32(i32 %16)
  %18 = load %struct.data_descriptor_entry*, %struct.data_descriptor_entry** %5, align 8
  %19 = getelementptr inbounds %struct.data_descriptor_entry, %struct.data_descriptor_entry* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.data_descriptor_entry*, %struct.data_descriptor_entry** %6, align 8
  %21 = call i32 @nx842_get_pa(%struct.data_descriptor_entry* %20)
  %22 = call i32 @cpu_to_be64(i32 %21)
  %23 = load %struct.data_descriptor_entry*, %struct.data_descriptor_entry** %5, align 8
  %24 = getelementptr inbounds %struct.data_descriptor_entry, %struct.data_descriptor_entry* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  ret void
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @nx842_get_pa(%struct.data_descriptor_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
