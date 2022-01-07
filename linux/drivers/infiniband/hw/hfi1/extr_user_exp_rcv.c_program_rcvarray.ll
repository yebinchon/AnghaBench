; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_program_rcvarray.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_program_rcvarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_filedata = type { %struct.hfi1_ctxtdata* }
%struct.hfi1_ctxtdata = type { i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }
%struct.tid_user_buf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tid_group = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_filedata*, %struct.tid_user_buf*, %struct.tid_group*, i32, i32, i32*, i32*, i32*)* @program_rcvarray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @program_rcvarray(%struct.hfi1_filedata* %0, %struct.tid_user_buf* %1, %struct.tid_group* %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.hfi1_filedata*, align 8
  %11 = alloca %struct.tid_user_buf*, align 8
  %12 = alloca %struct.tid_group*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.hfi1_ctxtdata*, align 8
  %19 = alloca %struct.hfi1_devdata*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.hfi1_filedata* %0, %struct.hfi1_filedata** %10, align 8
  store %struct.tid_user_buf* %1, %struct.tid_user_buf** %11, align 8
  store %struct.tid_group* %2, %struct.tid_group** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %29 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %10, align 8
  %30 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %29, i32 0, i32 0
  %31 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %30, align 8
  store %struct.hfi1_ctxtdata* %31, %struct.hfi1_ctxtdata** %18, align 8
  %32 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %18, align 8
  %33 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %32, i32 0, i32 1
  %34 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %33, align 8
  store %struct.hfi1_devdata* %34, %struct.hfi1_devdata** %19, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.tid_group*, %struct.tid_group** %12, align 8
  %37 = getelementptr inbounds %struct.tid_group, %struct.tid_group* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %8
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %194

43:                                               ; preds = %8
  store i32 0, i32* %20, align 4
  br label %44

44:                                               ; preds = %68, %43
  %45 = load i32, i32* %20, align 4
  %46 = load %struct.tid_group*, %struct.tid_group** %12, align 8
  %47 = getelementptr inbounds %struct.tid_group, %struct.tid_group* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %44
  %51 = load %struct.tid_group*, %struct.tid_group** %12, align 8
  %52 = getelementptr inbounds %struct.tid_group, %struct.tid_group* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %20, align 4
  %55 = shl i32 1, %54
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %20, align 4
  store i32 %59, i32* %23, align 4
  br label %71

60:                                               ; preds = %50
  %61 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %19, align 8
  %62 = load %struct.tid_group*, %struct.tid_group** %12, align 8
  %63 = getelementptr inbounds %struct.tid_group, %struct.tid_group* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %20, align 4
  %66 = add nsw i32 %64, %65
  %67 = call i32 @rcv_array_wc_fill(%struct.hfi1_devdata* %61, i32 %66)
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %20, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %20, align 4
  br label %44

71:                                               ; preds = %58, %44
  store i32 0, i32* %20, align 4
  br label %72

72:                                               ; preds = %138, %94, %71
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %172

76:                                               ; preds = %72
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %20, align 4
  %79 = add i32 %77, %78
  store i32 %79, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %80 = load i32, i32* %23, align 4
  %81 = load %struct.tid_group*, %struct.tid_group** %12, align 8
  %82 = getelementptr inbounds %struct.tid_group, %struct.tid_group* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sge i32 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %172

86:                                               ; preds = %76
  %87 = load %struct.tid_group*, %struct.tid_group** %12, align 8
  %88 = getelementptr inbounds %struct.tid_group, %struct.tid_group* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %23, align 4
  %91 = shl i32 1, %90
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %86
  %95 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %19, align 8
  %96 = load %struct.tid_group*, %struct.tid_group** %12, align 8
  %97 = getelementptr inbounds %struct.tid_group, %struct.tid_group* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %23, align 4
  %100 = add nsw i32 %98, %99
  %101 = call i32 @rcv_array_wc_fill(%struct.hfi1_devdata* %95, i32 %100)
  %102 = load i32, i32* %23, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %23, align 4
  br label %72

104:                                              ; preds = %86
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.tid_group*, %struct.tid_group** %12, align 8
  %107 = getelementptr inbounds %struct.tid_group, %struct.tid_group* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %23, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %22, align 4
  %111 = load %struct.tid_user_buf*, %struct.tid_user_buf** %11, align 8
  %112 = getelementptr inbounds %struct.tid_user_buf, %struct.tid_user_buf* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %27, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %25, align 4
  %119 = load %struct.tid_user_buf*, %struct.tid_user_buf** %11, align 8
  %120 = getelementptr inbounds %struct.tid_user_buf, %struct.tid_user_buf* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %27, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %26, align 4
  %127 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %10, align 8
  %128 = load %struct.tid_user_buf*, %struct.tid_user_buf** %11, align 8
  %129 = load i32, i32* %22, align 4
  %130 = load %struct.tid_group*, %struct.tid_group** %12, align 8
  %131 = load i32, i32* %26, align 4
  %132 = load i32, i32* %25, align 4
  %133 = call i32 @set_rcvarray_entry(%struct.hfi1_filedata* %127, %struct.tid_user_buf* %128, i32 %129, %struct.tid_group* %130, i32 %131, i32 %132)
  store i32 %133, i32* %28, align 4
  %134 = load i32, i32* %28, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %105
  %137 = load i32, i32* %28, align 4
  store i32 %137, i32* %9, align 4
  br label %194

138:                                              ; preds = %105
  %139 = load i32, i32* %25, align 4
  %140 = load i32, i32* %24, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %24, align 4
  %142 = load i32, i32* %22, align 4
  %143 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %18, align 8
  %144 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %142, %145
  %147 = call i32 @rcventry2tidinfo(i32 %146)
  %148 = load i32, i32* @LEN, align 4
  %149 = load i32, i32* %25, align 4
  %150 = call i32 @EXP_TID_SET(i32 %148, i32 %149)
  %151 = or i32 %147, %150
  store i32 %151, i32* %21, align 4
  %152 = load i32, i32* %21, align 4
  %153 = load i32*, i32** %15, align 8
  %154 = load i32*, i32** %16, align 8
  %155 = load i32, i32* %154, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = zext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  store i32 %152, i32* %158, align 4
  %159 = load %struct.tid_group*, %struct.tid_group** %12, align 8
  %160 = getelementptr inbounds %struct.tid_group, %struct.tid_group* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %23, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %23, align 4
  %165 = shl i32 1, %163
  %166 = load %struct.tid_group*, %struct.tid_group** %12, align 8
  %167 = getelementptr inbounds %struct.tid_group, %struct.tid_group* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* %20, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %20, align 4
  br label %72

172:                                              ; preds = %85, %72
  br label %173

173:                                              ; preds = %187, %172
  %174 = load i32, i32* %23, align 4
  %175 = load %struct.tid_group*, %struct.tid_group** %12, align 8
  %176 = getelementptr inbounds %struct.tid_group, %struct.tid_group* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %190

179:                                              ; preds = %173
  %180 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %19, align 8
  %181 = load %struct.tid_group*, %struct.tid_group** %12, align 8
  %182 = getelementptr inbounds %struct.tid_group, %struct.tid_group* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %23, align 4
  %185 = add nsw i32 %183, %184
  %186 = call i32 @rcv_array_wc_fill(%struct.hfi1_devdata* %180, i32 %185)
  br label %187

187:                                              ; preds = %179
  %188 = load i32, i32* %23, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %23, align 4
  br label %173

190:                                              ; preds = %173
  %191 = load i32, i32* %24, align 4
  %192 = load i32*, i32** %17, align 8
  store i32 %191, i32* %192, align 4
  %193 = load i32, i32* %20, align 4
  store i32 %193, i32* %9, align 4
  br label %194

194:                                              ; preds = %190, %136, %40
  %195 = load i32, i32* %9, align 4
  ret i32 %195
}

declare dso_local i32 @rcv_array_wc_fill(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @set_rcvarray_entry(%struct.hfi1_filedata*, %struct.tid_user_buf*, i32, %struct.tid_group*, i32, i32) #1

declare dso_local i32 @rcventry2tidinfo(i32) #1

declare dso_local i32 @EXP_TID_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
