; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_table_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_table_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.device* }
%struct.device = type { i32 }
%struct.hns_roce_hem_table = type { i32, i64, i64, i32, %struct.TYPE_3__**, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"set HEM base address to HW failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_table_get(%struct.hns_roce_dev* %0, %struct.hns_roce_hem_table* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.hns_roce_hem_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store %struct.hns_roce_hem_table* %1, %struct.hns_roce_hem_table** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %12 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %15 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %16 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %22 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @hns_roce_table_mhop_get(%struct.hns_roce_dev* %21, %struct.hns_roce_hem_table* %22, i64 %23)
  store i32 %24, i32* %4, align 4
  br label %141

25:                                               ; preds = %3
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %28 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = and i64 %26, %31
  %33 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %34 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %37 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = udiv i64 %35, %38
  %40 = udiv i64 %32, %39
  store i64 %40, i64* %10, align 8
  %41 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %42 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %41, i32 0, i32 3
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %45 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %44, i32 0, i32 4
  %46 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %46, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = icmp ne %struct.TYPE_3__* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %25
  %52 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %53 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %52, i32 0, i32 4
  %54 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %54, i64 %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %136

61:                                               ; preds = %25
  %62 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %63 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %64 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @PAGE_SHIFT, align 4
  %67 = zext i32 %66 to i64
  %68 = lshr i64 %65, %67
  %69 = trunc i64 %68 to i32
  %70 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %71 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %75 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %61
  %79 = load i32, i32* @GFP_KERNEL, align 4
  br label %82

80:                                               ; preds = %61
  %81 = load i32, i32* @GFP_HIGHUSER, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = load i32, i32* @__GFP_NOWARN, align 4
  %85 = or i32 %83, %84
  %86 = call %struct.TYPE_3__* @hns_roce_alloc_hem(%struct.hns_roce_dev* %62, i32 %69, i32 %73, i32 %85)
  %87 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %88 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %87, i32 0, i32 4
  %89 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %89, i64 %90
  store %struct.TYPE_3__* %86, %struct.TYPE_3__** %91, align 8
  %92 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %93 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %92, i32 0, i32 4
  %94 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %94, i64 %95
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = icmp ne %struct.TYPE_3__* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %82
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %9, align 4
  br label %136

102:                                              ; preds = %82
  %103 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %104 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i64 @hns_roce_set_hem(%struct.hns_roce_dev* %103, %struct.hns_roce_hem_table* %104, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %102
  %109 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %110 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %111 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %110, i32 0, i32 4
  %112 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %111, align 8
  %113 = load i64, i64* %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %112, i64 %113
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = call i32 @hns_roce_free_hem(%struct.hns_roce_dev* %109, %struct.TYPE_3__* %115)
  %117 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %118 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %117, i32 0, i32 4
  %119 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %118, align 8
  %120 = load i64, i64* %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %119, i64 %120
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %121, align 8
  %122 = load i32, i32* @ENODEV, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %9, align 4
  %124 = load %struct.device*, %struct.device** %8, align 8
  %125 = call i32 @dev_err(%struct.device* %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %136

126:                                              ; preds = %102
  %127 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %128 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %127, i32 0, i32 4
  %129 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %128, align 8
  %130 = load i64, i64* %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %129, i64 %130
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %126, %108, %99, %51
  %137 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %138 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %137, i32 0, i32 3
  %139 = call i32 @mutex_unlock(i32* %138)
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %136, %20
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @hns_roce_table_mhop_get(%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_3__* @hns_roce_alloc_hem(%struct.hns_roce_dev*, i32, i32, i32) #1

declare dso_local i64 @hns_roce_set_hem(%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64) #1

declare dso_local i32 @hns_roce_free_hem(%struct.hns_roce_dev*, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
