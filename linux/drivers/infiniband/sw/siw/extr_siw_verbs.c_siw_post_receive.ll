; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_post_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_post_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_recv_wr = type { i32, %struct.ib_recv_wr*, i32, i32 }
%struct.siw_qp = type { i64, i32, i32, %struct.TYPE_2__, %struct.siw_rqe*, i32, i64 }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.siw_rqe = type { i32, i64, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"no kernel post_recv for user mapped sq\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SIW_QP_STATE_RTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"RQ full\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"too many sge's: %d\0A\00", align 1
@SIW_WQE_VALID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_post_receive(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca %struct.ib_recv_wr**, align 8
  %8 = alloca %struct.siw_qp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.siw_rqe*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %6, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %7, align 8
  %13 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %14 = call %struct.siw_qp* @to_siw_qp(%struct.ib_qp* %13)
  store %struct.siw_qp* %14, %struct.siw_qp** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %16 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %21 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %20, %struct.ib_recv_wr** %21, align 8
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %168

24:                                               ; preds = %3
  %25 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %26 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %25, i32 0, i32 1
  %27 = call i32 @down_read_trylock(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %31 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %30, %struct.ib_recv_wr** %31, align 8
  %32 = load i32, i32* @ENOTCONN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %168

34:                                               ; preds = %24
  %35 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %36 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %41 = call i32 (%struct.siw_qp*, i8*, ...) @siw_dbg_qp(%struct.siw_qp* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %43 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %42, i32 0, i32 1
  %44 = call i32 @up_read(i32* %43)
  %45 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %46 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %45, %struct.ib_recv_wr** %46, align 8
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %168

49:                                               ; preds = %34
  %50 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %51 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SIW_QP_STATE_RTS, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %58 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %57, i32 0, i32 1
  %59 = call i32 @up_read(i32* %58)
  %60 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %61 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %60, %struct.ib_recv_wr** %61, align 8
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %168

64:                                               ; preds = %49
  %65 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %66 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %65, i32 0, i32 2
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %112, %64
  %70 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %71 = icmp ne %struct.ib_recv_wr* %70, null
  br i1 %71, label %72, label %144

72:                                               ; preds = %69
  %73 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %74 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %77 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = urem i64 %75, %79
  store i64 %80, i64* %11, align 8
  %81 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %82 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %81, i32 0, i32 4
  %83 = load %struct.siw_rqe*, %struct.siw_rqe** %82, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %83, i64 %84
  store %struct.siw_rqe* %85, %struct.siw_rqe** %12, align 8
  %86 = load %struct.siw_rqe*, %struct.siw_rqe** %12, align 8
  %87 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %72
  %91 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %92 = call i32 (%struct.siw_qp*, i8*, ...) @siw_dbg_qp(%struct.siw_qp* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %10, align 4
  br label %144

95:                                               ; preds = %72
  %96 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %97 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %100 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %98, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %95
  %105 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %106 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %107 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (%struct.siw_qp*, i8*, ...) @siw_dbg_qp(%struct.siw_qp* %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %10, align 4
  br label %144

112:                                              ; preds = %95
  %113 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %114 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.siw_rqe*, %struct.siw_rqe** %12, align 8
  %117 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %119 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.siw_rqe*, %struct.siw_rqe** %12, align 8
  %122 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %124 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.siw_rqe*, %struct.siw_rqe** %12, align 8
  %127 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %130 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @siw_copy_sgl(i32 %125, i32 %128, i32 %131)
  %133 = call i32 (...) @smp_wmb()
  %134 = load i64, i64* @SIW_WQE_VALID, align 8
  %135 = load %struct.siw_rqe*, %struct.siw_rqe** %12, align 8
  %136 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  %137 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %138 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %138, align 8
  %141 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %142 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %141, i32 0, i32 1
  %143 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %142, align 8
  store %struct.ib_recv_wr* %143, %struct.ib_recv_wr** %6, align 8
  br label %69

144:                                              ; preds = %104, %90, %69
  %145 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %146 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %145, i32 0, i32 2
  %147 = load i64, i64* %9, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32* %146, i64 %147)
  %149 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %150 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %149, i32 0, i32 1
  %151 = call i32 @up_read(i32* %150)
  %152 = load i32, i32* %10, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %144
  %155 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %156 = load i32, i32* %10, align 4
  %157 = call i32 (%struct.siw_qp*, i8*, ...) @siw_dbg_qp(%struct.siw_qp* %155, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  %158 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %159 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %158, %struct.ib_recv_wr** %159, align 8
  br label %160

160:                                              ; preds = %154, %144
  %161 = load i32, i32* %10, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  br label %166

164:                                              ; preds = %160
  %165 = load i32, i32* %10, align 4
  br label %166

166:                                              ; preds = %164, %163
  %167 = phi i32 [ 0, %163 ], [ %165, %164 ]
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %166, %56, %39, %29, %19
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local %struct.siw_qp* @to_siw_qp(%struct.ib_qp*) #1

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @siw_dbg_qp(%struct.siw_qp*, i8*, ...) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @siw_copy_sgl(i32, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
