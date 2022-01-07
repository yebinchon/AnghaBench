; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34v7.c_rmi_f34v7_write_partition_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34v7.c_rmi_f34v7_write_partition_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f34_data = type { %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_9__, i64, i64, i8*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@v7_BL_CONFIG_AREA = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@v7_CMD_READ_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f34_data*)* @rmi_f34v7_write_partition_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f34v7_write_partition_table(%struct.f34_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f34_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.f34_data* %0, %struct.f34_data** %3, align 8
  %6 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %7 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i8*, i8** @v7_BL_CONFIG_AREA, align 8
  %12 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %13 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 7
  store i8* %11, i8** %14, align 8
  %15 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %16 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %22 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %25 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %29 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @devm_kfree(i32* %27, i64 %31)
  %33 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %34 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %38 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i64 @devm_kzalloc(i32* %36, i32 %40, i32 %41)
  %43 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %44 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 5
  store i64 %42, i64* %45, align 8
  %46 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %47 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %1
  %52 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %53 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  store i32 0, i32* %54, align 8
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %127

57:                                               ; preds = %1
  %58 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %59 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %63 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 8
  %65 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @v7_CMD_READ_CONFIG, align 4
  %68 = call i32 @rmi_f34v7_read_blocks(%struct.f34_data* %65, i32 %66, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %127

73:                                               ; preds = %57
  %74 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %75 = call i32 @rmi_f34v7_erase_config(%struct.f34_data* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %127

80:                                               ; preds = %73
  %81 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %82 = call i32 @rmi_f34v7_write_flash_config(%struct.f34_data* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %127

87:                                               ; preds = %80
  %88 = load i8*, i8** @v7_BL_CONFIG_AREA, align 8
  %89 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %90 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 7
  store i8* %88, i8** %91, align 8
  %92 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %93 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %97 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 6
  store i64 %95, i64* %98, align 8
  %99 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %100 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %106 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %109 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %113 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sdiv i32 %111, %115
  %117 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %118 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  store i32 %116, i32* %119, align 4
  %120 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %121 = call i32 @rmi_f34v7_write_config(%struct.f34_data* %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %87
  %125 = load i32, i32* %5, align 4
  store i32 %125, i32* %2, align 4
  br label %127

126:                                              ; preds = %87
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %124, %85, %78, %71, %51
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @devm_kfree(i32*, i64) #1

declare dso_local i64 @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @rmi_f34v7_read_blocks(%struct.f34_data*, i32, i32) #1

declare dso_local i32 @rmi_f34v7_erase_config(%struct.f34_data*) #1

declare dso_local i32 @rmi_f34v7_write_flash_config(%struct.f34_data*) #1

declare dso_local i32 @rmi_f34v7_write_config(%struct.f34_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
