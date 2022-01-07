; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_get_atom_data_table_revision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_get_atom_data_table_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_common_table_header = type { i64, i64 }
%struct.atom_data_revision = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atom_common_table_header*, %struct.atom_data_revision*)* @get_atom_data_table_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_atom_data_table_revision(%struct.atom_common_table_header* %0, %struct.atom_data_revision* %1) #0 {
  %3 = alloca %struct.atom_common_table_header*, align 8
  %4 = alloca %struct.atom_data_revision*, align 8
  store %struct.atom_common_table_header* %0, %struct.atom_common_table_header** %3, align 8
  store %struct.atom_data_revision* %1, %struct.atom_data_revision** %4, align 8
  %5 = load %struct.atom_data_revision*, %struct.atom_data_revision** %4, align 8
  %6 = icmp ne %struct.atom_data_revision* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %31

8:                                                ; preds = %2
  %9 = load %struct.atom_data_revision*, %struct.atom_data_revision** %4, align 8
  %10 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.atom_data_revision*, %struct.atom_data_revision** %4, align 8
  %12 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.atom_common_table_header*, %struct.atom_common_table_header** %3, align 8
  %14 = icmp ne %struct.atom_common_table_header* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %31

16:                                               ; preds = %8
  %17 = load %struct.atom_common_table_header*, %struct.atom_common_table_header** %3, align 8
  %18 = getelementptr inbounds %struct.atom_common_table_header, %struct.atom_common_table_header* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 63
  %22 = load %struct.atom_data_revision*, %struct.atom_data_revision** %4, align 8
  %23 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.atom_common_table_header*, %struct.atom_common_table_header** %3, align 8
  %25 = getelementptr inbounds %struct.atom_common_table_header, %struct.atom_common_table_header* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 63
  %29 = load %struct.atom_data_revision*, %struct.atom_data_revision** %4, align 8
  %30 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %16, %15, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
