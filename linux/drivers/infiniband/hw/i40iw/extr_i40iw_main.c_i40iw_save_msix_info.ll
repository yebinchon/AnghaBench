; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_save_msix_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_save_msix_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, i32, %struct.TYPE_4__*, %struct.i40e_qvlist_info* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.i40e_qvlist_info = type { i64, %struct.i40e_qv_info* }
%struct.i40e_qv_info = type { i32, i32, i8*, i8* }
%struct.i40e_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"No MSI-X vectors\0A\00", align 1
@I40IW_ERR_CONFIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@I40E_QUEUE_INVALID_IDX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, %struct.i40e_info*)* @i40iw_save_msix_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_save_msix_info(%struct.i40iw_device* %0, %struct.i40e_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_device*, align 8
  %5 = alloca %struct.i40e_info*, align 8
  %6 = alloca %struct.i40e_qvlist_info*, align 8
  %7 = alloca %struct.i40e_qv_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %4, align 8
  store %struct.i40e_info* %1, %struct.i40e_info** %5, align 8
  %11 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %12 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @I40IW_ERR_CONFIG, align 4
  store i32 %17, i32* %3, align 4
  br label %184

18:                                               ; preds = %2
  %19 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %20 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %23 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %25 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 16
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %35 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 24, %37
  %39 = sub i64 %38, 1
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.TYPE_4__* @kzalloc(i32 %44, i32 %45)
  %47 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %48 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %47, i32 0, i32 2
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %48, align 8
  %49 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %50 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %18
  %54 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %54, i32* %3, align 4
  br label %184

55:                                               ; preds = %18
  %56 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %57 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %60 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %62
  %64 = bitcast %struct.TYPE_4__* %63 to %struct.i40e_qvlist_info*
  %65 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %66 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %65, i32 0, i32 3
  store %struct.i40e_qvlist_info* %64, %struct.i40e_qvlist_info** %66, align 8
  %67 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %68 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %67, i32 0, i32 3
  %69 = load %struct.i40e_qvlist_info*, %struct.i40e_qvlist_info** %68, align 8
  store %struct.i40e_qvlist_info* %69, %struct.i40e_qvlist_info** %6, align 8
  %70 = load %struct.i40e_qvlist_info*, %struct.i40e_qvlist_info** %6, align 8
  %71 = getelementptr inbounds %struct.i40e_qvlist_info, %struct.i40e_qvlist_info* %70, i32 0, i32 1
  %72 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %71, align 8
  store %struct.i40e_qv_info* %72, %struct.i40e_qv_info** %7, align 8
  %73 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %74 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = load %struct.i40e_qvlist_info*, %struct.i40e_qvlist_info** %6, align 8
  %78 = getelementptr inbounds %struct.i40e_qvlist_info, %struct.i40e_qvlist_info* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %80 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = call i64 (...) @num_online_cpus()
  %84 = icmp ule i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %55
  %86 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %87 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %55
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %178, %88
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %92 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %183

95:                                               ; preds = %89
  %96 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %97 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %105 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i32 %103, i32* %110, align 4
  %111 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %112 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %111, i32 0, i32 1
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %120 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  store i32 %118, i32* %125, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %128 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i32 %126, i32* %133, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %95
  %137 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %7, align 8
  %138 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %137, i32 0, i32 3
  store i8* null, i8** %138, align 8
  %139 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %140 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %136
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  %146 = sext i32 %144 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %7, align 8
  %149 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %148, i32 0, i32 2
  store i8* %147, i8** %149, align 8
  br label %154

150:                                              ; preds = %136
  %151 = load i8*, i8** @I40E_QUEUE_INVALID_IDX, align 8
  %152 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %7, align 8
  %153 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  br label %154

154:                                              ; preds = %150, %143
  br label %165

155:                                              ; preds = %95
  %156 = load i8*, i8** @I40E_QUEUE_INVALID_IDX, align 8
  %157 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %7, align 8
  %158 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %157, i32 0, i32 3
  store i8* %156, i8** %158, align 8
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  %161 = sext i32 %159 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %7, align 8
  %164 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %163, i32 0, i32 2
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %155, %154
  %166 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %7, align 8
  %167 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %166, i32 0, i32 0
  store i32 3, i32* %167, align 8
  %168 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %169 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %168, i32 0, i32 2
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %7, align 8
  %177 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %165
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  %181 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %7, align 8
  %182 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %181, i32 1
  store %struct.i40e_qv_info* %182, %struct.i40e_qv_info** %7, align 8
  br label %89

183:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %183, %53, %15
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @i40iw_pr_err(i8*) #1

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i64 @num_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
