; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_create_kernel_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_create_kernel_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_srq = type { %struct.TYPE_10__, i32, %struct.TYPE_9__, i32, i64, %struct.TYPE_8__, i64, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.hns_roce_dev = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Create idx queue fail(%d)!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_srq*, i32)* @create_kernel_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_kernel_srq(%struct.hns_roce_srq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_roce_srq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hns_roce_srq* %0, %struct.hns_roce_srq** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %10 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.hns_roce_dev* @to_hr_dev(i32 %12)
  store %struct.hns_roce_dev* %13, %struct.hns_roce_dev** %6, align 8
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %16 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %14, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 1, %22
  %24 = mul nsw i32 %23, 2
  %25 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %26 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %25, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @hns_roce_buf_alloc(%struct.hns_roce_dev* %20, i32 %21, i32 %24, %struct.TYPE_10__* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %169

33:                                               ; preds = %2
  %34 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %35 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %34, i32 0, i32 7
  store i64 0, i64* %35, align 8
  %36 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %37 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, 1
  %40 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %41 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %40, i32 0, i32 6
  store i64 %39, i64* %41, align 8
  %42 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %43 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %44 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %48 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %52 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %51, i32 0, i32 1
  %53 = call i32 @hns_roce_mtt_init(%struct.hns_roce_dev* %42, i32 %46, i32 %50, i32* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %33
  br label %162

57:                                               ; preds = %33
  %58 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %59 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %60 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %59, i32 0, i32 1
  %61 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %62 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %61, i32 0, i32 0
  %63 = call i32 @hns_roce_buf_write_mtt(%struct.hns_roce_dev* %58, i32* %60, %struct.TYPE_10__* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %157

67:                                               ; preds = %57
  %68 = load i32, i32* @PAGE_SHIFT, align 4
  %69 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %70 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %68, %72
  store i32 %73, i32* %7, align 4
  %74 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %75 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @hns_roce_create_idx_que(i32 %77, %struct.hns_roce_srq* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %67
  %84 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %85 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %157

89:                                               ; preds = %67
  %90 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %91 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %92 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %97 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %102 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = call i32 @hns_roce_mtt_init(%struct.hns_roce_dev* %90, i32 %95, i32 %100, i32* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %89
  br label %142

108:                                              ; preds = %89
  %109 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %110 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %111 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  %113 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %114 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = call i32 @hns_roce_buf_write_mtt(%struct.hns_roce_dev* %109, i32* %112, %struct.TYPE_10__* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  br label %136

120:                                              ; preds = %108
  %121 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %122 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call i32 @kvmalloc_array(i64 %123, i32 4, i32 %124)
  %126 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %127 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  %128 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %129 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %120
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %8, align 4
  br label %136

135:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %169

136:                                              ; preds = %132, %119
  %137 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %138 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %139 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  %141 = call i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev* %137, i32* %140)
  br label %142

142:                                              ; preds = %136, %107
  %143 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %144 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %145 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %149 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  %151 = call i32 @hns_roce_buf_free(%struct.hns_roce_dev* %143, i32 %147, %struct.TYPE_10__* %150)
  %152 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %153 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @kfree(i32 %155)
  br label %157

157:                                              ; preds = %142, %83, %66
  %158 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %159 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %160 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %159, i32 0, i32 1
  %161 = call i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev* %158, i32* %160)
  br label %162

162:                                              ; preds = %157, %56
  %163 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %164 = load i32, i32* %5, align 4
  %165 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %166 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %165, i32 0, i32 0
  %167 = call i32 @hns_roce_buf_free(%struct.hns_roce_dev* %163, i32 %164, %struct.TYPE_10__* %166)
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %162, %135, %30
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local i64 @hns_roce_buf_alloc(%struct.hns_roce_dev*, i32, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @hns_roce_mtt_init(%struct.hns_roce_dev*, i32, i32, i32*) #1

declare dso_local i32 @hns_roce_buf_write_mtt(%struct.hns_roce_dev*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @hns_roce_create_idx_que(i32, %struct.hns_roce_srq*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @kvmalloc_array(i64, i32, i32) #1

declare dso_local i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev*, i32*) #1

declare dso_local i32 @hns_roce_buf_free(%struct.hns_roce_dev*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
