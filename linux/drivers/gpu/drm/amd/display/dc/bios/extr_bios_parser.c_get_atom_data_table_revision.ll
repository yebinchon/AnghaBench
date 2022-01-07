; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_get_atom_data_table_revision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_get_atom_data_table_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_data_revision = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.atom_data_revision*)* @get_atom_data_table_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_atom_data_table_revision(i32* %0, %struct.atom_data_revision* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.atom_data_revision*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.atom_data_revision* %1, %struct.atom_data_revision** %4, align 8
  %5 = load %struct.atom_data_revision*, %struct.atom_data_revision** %4, align 8
  %6 = icmp ne %struct.atom_data_revision* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %27

8:                                                ; preds = %2
  %9 = load %struct.atom_data_revision*, %struct.atom_data_revision** %4, align 8
  %10 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %9, i32 0, i32 1
  store i8* null, i8** %10, align 8
  %11 = load %struct.atom_data_revision*, %struct.atom_data_revision** %4, align 8
  %12 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %11, i32 0, i32 0
  store i8* null, i8** %12, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %27

16:                                               ; preds = %8
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @GET_DATA_TABLE_MAJOR_REVISION(i32* %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.atom_data_revision*, %struct.atom_data_revision** %4, align 8
  %21 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @GET_DATA_TABLE_MINOR_REVISION(i32* %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.atom_data_revision*, %struct.atom_data_revision** %4, align 8
  %26 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  br label %27

27:                                               ; preds = %16, %15, %7
  ret void
}

declare dso_local i64 @GET_DATA_TABLE_MAJOR_REVISION(i32*) #1

declare dso_local i64 @GET_DATA_TABLE_MINOR_REVISION(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
