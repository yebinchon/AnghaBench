; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_populate_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_populate_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32 }
%struct.dm_ioctl = type { i32, i32 }
%struct.dm_target_spec = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"populate_table: no targets specified\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unable to find target\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"error adding target to table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_table*, %struct.dm_ioctl*, i64)* @populate_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_table(%struct.dm_table* %0, %struct.dm_ioctl* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_table*, align 8
  %6 = alloca %struct.dm_ioctl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dm_target_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %5, align 8
  store %struct.dm_ioctl* %1, %struct.dm_ioctl** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %15 = bitcast %struct.dm_ioctl* %14 to %struct.dm_target_spec*
  store %struct.dm_target_spec* %15, %struct.dm_target_spec** %10, align 8
  %16 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %17 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %20 = bitcast %struct.dm_ioctl* %19 to i8*
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr i8, i8* %20, i64 %21
  store i8* %22, i8** %12, align 8
  %23 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %24 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = call i32 @DMWARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %78

31:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %72, %31
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %35 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %75

38:                                               ; preds = %32
  %39 = load %struct.dm_target_spec*, %struct.dm_target_spec** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @next_target(%struct.dm_target_spec* %39, i32 %40, i8* %41, %struct.dm_target_spec** %10, i8** %13)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = call i32 @DMWARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %78

48:                                               ; preds = %38
  %49 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %50 = load %struct.dm_target_spec*, %struct.dm_target_spec** %10, align 8
  %51 = getelementptr inbounds %struct.dm_target_spec, %struct.dm_target_spec* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.dm_target_spec*, %struct.dm_target_spec** %10, align 8
  %54 = getelementptr inbounds %struct.dm_target_spec, %struct.dm_target_spec* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.dm_target_spec*, %struct.dm_target_spec** %10, align 8
  %58 = getelementptr inbounds %struct.dm_target_spec, %struct.dm_target_spec* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @dm_table_add_target(%struct.dm_table* %49, i32 %52, i32 %56, i32 %60, i8* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %48
  %66 = call i32 @DMWARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %78

68:                                               ; preds = %48
  %69 = load %struct.dm_target_spec*, %struct.dm_target_spec** %10, align 8
  %70 = getelementptr inbounds %struct.dm_target_spec, %struct.dm_target_spec* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %32

75:                                               ; preds = %32
  %76 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %77 = call i32 @dm_table_complete(%struct.dm_table* %76)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %65, %45, %27
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @next_target(%struct.dm_target_spec*, i32, i8*, %struct.dm_target_spec**, i8**) #1

declare dso_local i32 @dm_table_add_target(%struct.dm_table*, i32, i32, i32, i8*) #1

declare dso_local i32 @dm_table_complete(%struct.dm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
