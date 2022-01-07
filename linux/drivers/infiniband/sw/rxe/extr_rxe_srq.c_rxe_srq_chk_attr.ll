; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_srq.c_rxe_srq_chk_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_srq.c_rxe_srq_chk_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.rxe_srq = type { i64, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ib_srq_attr = type { i64, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"srq in error state\0A\00", align 1
@IB_SRQ_MAX_WR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"max_wr(%d) > max_srq_wr(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"max_wr(%d) <= 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"max_wr (%d) < srq->limit (%d)\0A\00", align 1
@RXE_MIN_SRQ_WR = common dso_local global i64 0, align 8
@IB_SRQ_LIMIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"srq_limit(%d) > max_srq_wr(%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"srq_limit (%d) > cur limit(%d)\0A\00", align 1
@IB_SRQ_INIT_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"max_sge(%d) > max_srq_sge(%d)\0A\00", align 1
@RXE_MIN_SRQ_SGE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_srq_chk_attr(%struct.rxe_dev* %0, %struct.rxe_srq* %1, %struct.ib_srq_attr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxe_dev*, align 8
  %7 = alloca %struct.rxe_srq*, align 8
  %8 = alloca %struct.ib_srq_attr*, align 8
  %9 = alloca i32, align 4
  store %struct.rxe_dev* %0, %struct.rxe_dev** %6, align 8
  store %struct.rxe_srq* %1, %struct.rxe_srq** %7, align 8
  store %struct.ib_srq_attr* %2, %struct.ib_srq_attr** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.rxe_srq*, %struct.rxe_srq** %7, align 8
  %11 = icmp ne %struct.rxe_srq* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load %struct.rxe_srq*, %struct.rxe_srq** %7, align 8
  %14 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %174

19:                                               ; preds = %12, %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @IB_SRQ_MAX_WR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %87

24:                                               ; preds = %19
  %25 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %26 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %29 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %27, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %35 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %38 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %36, i64 %40)
  br label %174

42:                                               ; preds = %24
  %43 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %44 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %49 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  br label %174

52:                                               ; preds = %42
  %53 = load %struct.rxe_srq*, %struct.rxe_srq** %7, align 8
  %54 = icmp ne %struct.rxe_srq* %53, null
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = load %struct.rxe_srq*, %struct.rxe_srq** %7, align 8
  %57 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %62 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.rxe_srq*, %struct.rxe_srq** %7, align 8
  %65 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %70 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.rxe_srq*, %struct.rxe_srq** %7, align 8
  %73 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %71, i64 %74)
  br label %174

76:                                               ; preds = %60, %55, %52
  %77 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %78 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @RXE_MIN_SRQ_WR, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i64, i64* @RXE_MIN_SRQ_WR, align 8
  %84 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %85 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %86, %19
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @IB_SRQ_LIMIT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %140

92:                                               ; preds = %87
  %93 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %94 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %97 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %95, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %92
  %102 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %103 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %106 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %104, i64 %108)
  br label %174

110:                                              ; preds = %92
  %111 = load %struct.rxe_srq*, %struct.rxe_srq** %7, align 8
  %112 = icmp ne %struct.rxe_srq* %111, null
  br i1 %112, label %113, label %139

113:                                              ; preds = %110
  %114 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %115 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.rxe_srq*, %struct.rxe_srq** %7, align 8
  %118 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %116, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %113
  %127 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %128 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.rxe_srq*, %struct.rxe_srq** %7, align 8
  %131 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %129, i64 %137)
  br label %174

139:                                              ; preds = %113, %110
  br label %140

140:                                              ; preds = %139, %87
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @IB_SRQ_INIT_MASK, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %173

144:                                              ; preds = %140
  %145 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %146 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %149 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %147, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %144
  %154 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %155 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %158 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %156, i64 %160)
  br label %174

162:                                              ; preds = %144
  %163 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %164 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @RXE_MIN_SRQ_SGE, align 8
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = load i64, i64* @RXE_MIN_SRQ_SGE, align 8
  %170 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %171 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %170, i32 0, i32 2
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %168, %162
  br label %173

173:                                              ; preds = %172, %140
  store i32 0, i32* %5, align 4
  br label %177

174:                                              ; preds = %153, %126, %101, %68, %47, %33, %17
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %174, %173
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i32 @pr_warn(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
