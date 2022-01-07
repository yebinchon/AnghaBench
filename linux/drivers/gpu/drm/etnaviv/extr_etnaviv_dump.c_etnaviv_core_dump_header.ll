; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_dump.c_etnaviv_core_dump_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_dump.c_etnaviv_core_dump_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core_dump_iterator = type { i8*, i8*, %struct.etnaviv_dump_object_header* }
%struct.etnaviv_dump_object_header = type { i32, i8*, i8*, i8* }

@ETDUMP_MAGIC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.core_dump_iterator*, i8*, i8*)* @etnaviv_core_dump_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_core_dump_header(%struct.core_dump_iterator* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.core_dump_iterator*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.etnaviv_dump_object_header*, align 8
  store %struct.core_dump_iterator* %0, %struct.core_dump_iterator** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.core_dump_iterator*, %struct.core_dump_iterator** %4, align 8
  %9 = getelementptr inbounds %struct.core_dump_iterator, %struct.core_dump_iterator* %8, i32 0, i32 2
  %10 = load %struct.etnaviv_dump_object_header*, %struct.etnaviv_dump_object_header** %9, align 8
  store %struct.etnaviv_dump_object_header* %10, %struct.etnaviv_dump_object_header** %7, align 8
  %11 = load i8*, i8** @ETDUMP_MAGIC, align 8
  %12 = call i8* @cpu_to_le32(i8* %11)
  %13 = load %struct.etnaviv_dump_object_header*, %struct.etnaviv_dump_object_header** %7, align 8
  %14 = getelementptr inbounds %struct.etnaviv_dump_object_header, %struct.etnaviv_dump_object_header* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @cpu_to_le32(i8* %15)
  %17 = load %struct.etnaviv_dump_object_header*, %struct.etnaviv_dump_object_header** %7, align 8
  %18 = getelementptr inbounds %struct.etnaviv_dump_object_header, %struct.etnaviv_dump_object_header* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load %struct.core_dump_iterator*, %struct.core_dump_iterator** %4, align 8
  %20 = getelementptr inbounds %struct.core_dump_iterator, %struct.core_dump_iterator* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.core_dump_iterator*, %struct.core_dump_iterator** %4, align 8
  %23 = getelementptr inbounds %struct.core_dump_iterator, %struct.core_dump_iterator* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %21 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = inttoptr i64 %27 to i8*
  %29 = call i8* @cpu_to_le32(i8* %28)
  %30 = load %struct.etnaviv_dump_object_header*, %struct.etnaviv_dump_object_header** %7, align 8
  %31 = getelementptr inbounds %struct.etnaviv_dump_object_header, %struct.etnaviv_dump_object_header* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.core_dump_iterator*, %struct.core_dump_iterator** %4, align 8
  %34 = getelementptr inbounds %struct.core_dump_iterator, %struct.core_dump_iterator* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = ptrtoint i8* %32 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = inttoptr i64 %38 to i8*
  %40 = call i8* @cpu_to_le32(i8* %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.etnaviv_dump_object_header*, %struct.etnaviv_dump_object_header** %7, align 8
  %43 = getelementptr inbounds %struct.etnaviv_dump_object_header, %struct.etnaviv_dump_object_header* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.core_dump_iterator*, %struct.core_dump_iterator** %4, align 8
  %45 = getelementptr inbounds %struct.core_dump_iterator, %struct.core_dump_iterator* %44, i32 0, i32 2
  %46 = load %struct.etnaviv_dump_object_header*, %struct.etnaviv_dump_object_header** %45, align 8
  %47 = getelementptr inbounds %struct.etnaviv_dump_object_header, %struct.etnaviv_dump_object_header* %46, i32 1
  store %struct.etnaviv_dump_object_header* %47, %struct.etnaviv_dump_object_header** %45, align 8
  %48 = load %struct.etnaviv_dump_object_header*, %struct.etnaviv_dump_object_header** %7, align 8
  %49 = getelementptr inbounds %struct.etnaviv_dump_object_header, %struct.etnaviv_dump_object_header* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.core_dump_iterator*, %struct.core_dump_iterator** %4, align 8
  %52 = getelementptr inbounds %struct.core_dump_iterator, %struct.core_dump_iterator* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = sext i32 %50 to i64
  %55 = getelementptr i8, i8* %53, i64 %54
  store i8* %55, i8** %52, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
