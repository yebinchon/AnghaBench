; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_tp_dim_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_tp_dim_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.applespi_data* }
%struct.applespi_data = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { %struct.applespi_data* }

@.str = private unnamed_addr constant [20 x i8] c"0x%.4x %dx%d+%u+%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @applespi_tp_dim_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applespi_tp_dim_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.applespi_data*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = load %struct.applespi_data*, %struct.applespi_data** %7, align 8
  store %struct.applespi_data* %8, %struct.applespi_data** %5, align 8
  %9 = load %struct.applespi_data*, %struct.applespi_data** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  store %struct.applespi_data* %9, %struct.applespi_data** %11, align 8
  %12 = load %struct.applespi_data*, %struct.applespi_data** %5, align 8
  %13 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.applespi_data*, %struct.applespi_data** %5, align 8
  %16 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.applespi_data*, %struct.applespi_data** %5, align 8
  %22 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.applespi_data*, %struct.applespi_data** %5, align 8
  %25 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.applespi_data*, %struct.applespi_data** %5, align 8
  %28 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.applespi_data*, %struct.applespi_data** %5, align 8
  %31 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  %34 = load %struct.applespi_data*, %struct.applespi_data** %5, align 8
  %35 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.applespi_data*, %struct.applespi_data** %5, align 8
  %38 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  %41 = call i32 @snprintf(i32 %14, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %33, i32 %40)
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = call i32 @nonseekable_open(%struct.inode* %42, %struct.file* %43)
  ret i32 %44
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
