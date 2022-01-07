; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i82975x_edac.c_i82975x_process_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i82975x_edac.c_i82975x_process_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.i82975x_error_info = type { i32, i32, i32, i32, i32 }

@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"UE overwrote CE\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"error processing EAP:\0A\09XEAP=%u\0A\09 EAP=0x%08x\0A\09PAGE=0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"i82975x UE\00", align 1
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"i82975x CE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.i82975x_error_info*, i32)* @i82975x_process_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i82975x_process_error_info(%struct.mem_ctl_info* %0, %struct.i82975x_error_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.i82975x_error_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store %struct.i82975x_error_info* %1, %struct.i82975x_error_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %13 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 3
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %158

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %158

22:                                               ; preds = %18
  %23 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %24 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %27 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %25, %28
  %30 = and i32 %29, 3
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %34 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %35 = call i32 @edac_mc_handle_error(i32 %33, %struct.mem_ctl_info* %34, i32 1, i64 0, i64 0, i32 0, i32 -1, i32 -1, i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %37 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %40 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %32, %22
  %42 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %43 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = lshr i64 %46, 1
  store i64 %47, i64* %11, align 8
  %48 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %49 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i64, i64* %11, align 8
  %55 = or i64 %54, 2147483648
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %53, %41
  %57 = load i32, i32* @PAGE_SHIFT, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i64, i64* %11, align 8
  %60 = zext i32 %58 to i64
  %61 = lshr i64 %59, %60
  store i64 %61, i64* %11, align 8
  %62 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info* %62, i64 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %83

67:                                               ; preds = %56
  %68 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %69 = load i32, i32* @KERN_ERR, align 4
  %70 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %71 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %78 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %11, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @i82975x_mc_printk(%struct.mem_ctl_info* %68, i32 %69, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %79, i32 %81)
  store i32 0, i32* %4, align 4
  br label %158

83:                                               ; preds = %56
  %84 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %85 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %86, i64 %88
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %100

95:                                               ; preds = %83
  %96 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %97 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 1
  br label %100

100:                                              ; preds = %95, %94
  %101 = phi i32 [ 0, %94 ], [ %99, %95 ]
  store i32 %101, i32* %9, align 4
  %102 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %103 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PAGE_SHIFT, align 4
  %106 = shl i32 1, %105
  %107 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %108 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %109, i64 %111
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %115, i64 %117
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 1, %123
  %125 = sub nsw i32 %106, %124
  %126 = and i32 %104, %125
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %10, align 8
  %128 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %129 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 2
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %100
  %134 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %135 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* %10, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @edac_mc_handle_error(i32 %134, %struct.mem_ctl_info* %135, i32 1, i64 %136, i64 %137, i32 0, i32 %138, i32 -1, i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %157

140:                                              ; preds = %100
  %141 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %142 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load i64, i64* %10, align 8
  %145 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %146 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %140
  %152 = load i32, i32* %9, align 4
  br label %154

153:                                              ; preds = %140
  br label %154

154:                                              ; preds = %153, %151
  %155 = phi i32 [ %152, %151 ], [ 0, %153 ]
  %156 = call i32 @edac_mc_handle_error(i32 %141, %struct.mem_ctl_info* %142, i32 1, i64 %143, i64 %144, i32 %147, i32 %148, i32 %155, i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %133
  store i32 1, i32* %4, align 4
  br label %158

158:                                              ; preds = %157, %67, %21, %17
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i64, i64, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info*, i64) #1

declare dso_local i32 @i82975x_mc_printk(%struct.mem_ctl_info*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
