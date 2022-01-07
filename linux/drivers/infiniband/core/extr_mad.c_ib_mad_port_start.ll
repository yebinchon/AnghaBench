; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_mad_port_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_mad_port_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_port_private = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ib_qp* }
%struct.ib_qp = type { i64 }
%struct.ib_qp_attr = type { i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_DEFAULT_PKEY_FULL = common dso_local global i32 0, align 4
@IB_MAD_QPS_CORE = common dso_local global i32 0, align 4
@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_QP1_QKEY = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Couldn't change QP%d state to INIT: %d\0A\00", align 1
@IB_QPS_RTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Couldn't change QP%d state to RTR: %d\0A\00", align 1
@IB_QPS_RTS = common dso_local global i32 0, align 4
@IB_MAD_SEND_Q_PSN = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Couldn't change QP%d state to RTS: %d\0A\00", align 1
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Failed to request completion notification: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Couldn't post receive WRs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_port_private*)* @ib_mad_port_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_mad_port_start(%struct.ib_mad_port_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_mad_port_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca %struct.ib_qp*, align 8
  %8 = alloca i64, align 8
  store %struct.ib_mad_port_private* %0, %struct.ib_mad_port_private** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ib_qp_attr* @kmalloc(i32 24, i32 %9)
  store %struct.ib_qp_attr* %10, %struct.ib_qp_attr** %6, align 8
  %11 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %12 = icmp ne %struct.ib_qp_attr* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %182

16:                                               ; preds = %1
  %17 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %18 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %21 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IB_DEFAULT_PKEY_FULL, align 4
  %24 = call i32 @ib_find_pkey(%struct.TYPE_4__* %19, i32 %22, i32 %23, i64* %8)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i64 0, i64* %8, align 8
  br label %28

28:                                               ; preds = %27, %16
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %123, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @IB_MAD_QPS_CORE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %126

33:                                               ; preds = %29
  %34 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %35 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.ib_qp*, %struct.ib_qp** %40, align 8
  store %struct.ib_qp* %41, %struct.ib_qp** %7, align 8
  %42 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %43 = icmp ne %struct.ib_qp* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %123

45:                                               ; preds = %33
  %46 = load i32, i32* @IB_QPS_INIT, align 4
  %47 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %48 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %51 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %53 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %59

57:                                               ; preds = %45
  %58 = load i32, i32* @IB_QP1_QKEY, align 4
  br label %59

59:                                               ; preds = %57, %56
  %60 = phi i32 [ 0, %56 ], [ %58, %57 ]
  %61 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %62 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %64 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %65 = load i32, i32* @IB_QP_STATE, align 4
  %66 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @IB_QP_QKEY, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @ib_modify_qp(%struct.ib_qp* %63, %struct.ib_qp_attr* %64, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %59
  %74 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %75 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 (i32*, i8*, ...) @dev_err(i32* %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  br label %178

81:                                               ; preds = %59
  %82 = load i32, i32* @IB_QPS_RTR, align 4
  %83 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %84 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %86 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %87 = load i32, i32* @IB_QP_STATE, align 4
  %88 = call i32 @ib_modify_qp(%struct.ib_qp* %85, %struct.ib_qp_attr* %86, i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %81
  %92 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %93 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %97)
  br label %178

99:                                               ; preds = %81
  %100 = load i32, i32* @IB_QPS_RTS, align 4
  %101 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %102 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @IB_MAD_SEND_Q_PSN, align 4
  %104 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %105 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %107 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %108 = load i32, i32* @IB_QP_STATE, align 4
  %109 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @ib_modify_qp(%struct.ib_qp* %106, %struct.ib_qp_attr* %107, i32 %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %99
  %115 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %116 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 (i32*, i8*, ...) @dev_err(i32* %118, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %120)
  br label %178

122:                                              ; preds = %99
  br label %123

123:                                              ; preds = %122, %44
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %29

126:                                              ; preds = %29
  %127 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %128 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %131 = call i32 @ib_req_notify_cq(i32 %129, i32 %130)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %126
  %135 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %136 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %4, align 4
  %140 = call i32 (i32*, i8*, ...) @dev_err(i32* %138, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  br label %178

141:                                              ; preds = %126
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %174, %141
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @IB_MAD_QPS_CORE, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %177

146:                                              ; preds = %142
  %147 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %148 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %147, i32 0, i32 1
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load %struct.ib_qp*, %struct.ib_qp** %153, align 8
  %155 = icmp ne %struct.ib_qp* %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %146
  br label %174

157:                                              ; preds = %146
  %158 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %159 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %158, i32 0, i32 1
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 %162
  %164 = call i32 @ib_mad_post_receive_mads(%struct.TYPE_3__* %163, i32* null)
  store i32 %164, i32* %4, align 4
  %165 = load i32, i32* %4, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %157
  %168 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %169 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = call i32 (i32*, i8*, ...) @dev_err(i32* %171, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %178

173:                                              ; preds = %157
  br label %174

174:                                              ; preds = %173, %156
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  br label %142

177:                                              ; preds = %142
  br label %178

178:                                              ; preds = %177, %167, %134, %114, %91, %73
  %179 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %180 = call i32 @kfree(%struct.ib_qp_attr* %179)
  %181 = load i32, i32* %4, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %178, %13
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.ib_qp_attr* @kmalloc(i32, i32) #1

declare dso_local i32 @ib_find_pkey(%struct.TYPE_4__*, i32, i32, i64*) #1

declare dso_local i32 @ib_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ib_req_notify_cq(i32, i32) #1

declare dso_local i32 @ib_mad_post_receive_mads(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @kfree(%struct.ib_qp_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
