; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_alloc_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_alloc_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }
%struct.mthca_pd = type { i32 }
%struct.ib_srq_attr = type { i64, i32 }
%struct.mthca_srq = type { i64, i32, i32, i64, i32, i32, i64, i32, i32, i32, i32, i32, i64 }
%struct.ib_udata = type { i32 }
%struct.mthca_mailbox = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTHCA_DB_TYPE_SRQ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SW2HW_SRQ failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"HW2SW_SRQ failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_alloc_srq(%struct.mthca_dev* %0, %struct.mthca_pd* %1, %struct.ib_srq_attr* %2, %struct.mthca_srq* %3, %struct.ib_udata* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mthca_dev*, align 8
  %8 = alloca %struct.mthca_pd*, align 8
  %9 = alloca %struct.ib_srq_attr*, align 8
  %10 = alloca %struct.mthca_srq*, align 8
  %11 = alloca %struct.ib_udata*, align 8
  %12 = alloca %struct.mthca_mailbox*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %7, align 8
  store %struct.mthca_pd* %1, %struct.mthca_pd** %8, align 8
  store %struct.ib_srq_attr* %2, %struct.ib_srq_attr** %9, align 8
  store %struct.mthca_srq* %3, %struct.mthca_srq** %10, align 8
  store %struct.ib_udata* %4, %struct.ib_udata** %11, align 8
  %15 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %9, align 8
  %16 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %19 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %17, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %5
  %24 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %9, align 8
  %25 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %28 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23, %5
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %326

35:                                               ; preds = %23
  %36 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %9, align 8
  %37 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %40 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %9, align 8
  %42 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %45 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %47 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %46, i32 0, i32 12
  store i64 0, i64* %47, align 8
  %48 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %49 = call i64 @mthca_is_memfree(%struct.mthca_dev* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %35
  %52 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %53 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  %56 = trunc i64 %55 to i32
  %57 = call i64 @roundup_pow_of_two(i32 %56)
  %58 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %59 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %67

60:                                               ; preds = %35
  %61 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %62 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  %65 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %66 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %60, %51
  %68 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %69 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = add i64 4, %72
  %74 = trunc i64 %73 to i32
  %75 = call i64 @roundup_pow_of_two(i32 %74)
  %76 = call i32 @max(i64 64, i64 %75)
  store i32 %76, i32* %13, align 4
  %77 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %78 = call i64 @mthca_is_memfree(%struct.mthca_dev* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %67
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %83 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %81, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %326

90:                                               ; preds = %80, %67
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @ilog2(i32 %91)
  %93 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %94 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %93, i32 0, i32 11
  store i32 %92, i32* %94, align 8
  %95 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %96 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = call i32 @mthca_alloc(i32* %97)
  %99 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %100 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %102 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %108

105:                                              ; preds = %90
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %326

108:                                              ; preds = %90
  %109 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %110 = call i64 @mthca_is_memfree(%struct.mthca_dev* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %148

112:                                              ; preds = %108
  %113 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %114 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %115 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %119 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @mthca_table_get(%struct.mthca_dev* %113, i32 %117, i32 %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  br label %317

125:                                              ; preds = %112
  %126 = load %struct.ib_udata*, %struct.ib_udata** %11, align 8
  %127 = icmp ne %struct.ib_udata* %126, null
  br i1 %127, label %147, label %128

128:                                              ; preds = %125
  %129 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %130 = load i32, i32* @MTHCA_DB_TYPE_SRQ, align 4
  %131 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %132 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %135 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %134, i32 0, i32 10
  %136 = call i64 @mthca_alloc_db(%struct.mthca_dev* %129, i32 %130, i32 %133, i32* %135)
  %137 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %138 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %137, i32 0, i32 3
  store i64 %136, i64* %138, align 8
  %139 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %140 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %128
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %14, align 4
  br label %307

146:                                              ; preds = %128
  br label %147

147:                                              ; preds = %146, %125
  br label %148

148:                                              ; preds = %147, %108
  %149 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %150 = load i32, i32* @GFP_KERNEL, align 4
  %151 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %149, i32 %150)
  store %struct.mthca_mailbox* %151, %struct.mthca_mailbox** %12, align 8
  %152 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %153 = call i64 @IS_ERR(%struct.mthca_mailbox* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %157 = call i32 @PTR_ERR(%struct.mthca_mailbox* %156)
  store i32 %157, i32* %14, align 4
  br label %292

158:                                              ; preds = %148
  %159 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %160 = load %struct.mthca_pd*, %struct.mthca_pd** %8, align 8
  %161 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %162 = load %struct.ib_udata*, %struct.ib_udata** %11, align 8
  %163 = call i32 @mthca_alloc_srq_buf(%struct.mthca_dev* %159, %struct.mthca_pd* %160, %struct.mthca_srq* %161, %struct.ib_udata* %162)
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* %14, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  br label %288

167:                                              ; preds = %158
  %168 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %169 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %168, i32 0, i32 9
  %170 = call i32 @spin_lock_init(i32* %169)
  %171 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %172 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %171, i32 0, i32 4
  store i32 1, i32* %172, align 8
  %173 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %174 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %173, i32 0, i32 8
  %175 = call i32 @init_waitqueue_head(i32* %174)
  %176 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %177 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %176, i32 0, i32 7
  %178 = call i32 @mutex_init(i32* %177)
  %179 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %180 = call i64 @mthca_is_memfree(%struct.mthca_dev* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %167
  %183 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %184 = load %struct.mthca_pd*, %struct.mthca_pd** %8, align 8
  %185 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %186 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %187 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.ib_udata*, %struct.ib_udata** %11, align 8
  %190 = call i32 @mthca_arbel_init_srq_context(%struct.mthca_dev* %183, %struct.mthca_pd* %184, %struct.mthca_srq* %185, i32 %188, %struct.ib_udata* %189)
  br label %200

191:                                              ; preds = %167
  %192 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %193 = load %struct.mthca_pd*, %struct.mthca_pd** %8, align 8
  %194 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %195 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %196 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.ib_udata*, %struct.ib_udata** %11, align 8
  %199 = call i32 @mthca_tavor_init_srq_context(%struct.mthca_dev* %192, %struct.mthca_pd* %193, %struct.mthca_srq* %194, i32 %197, %struct.ib_udata* %198)
  br label %200

200:                                              ; preds = %191, %182
  %201 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %202 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %203 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %204 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @mthca_SW2HW_SRQ(%struct.mthca_dev* %201, %struct.mthca_mailbox* %202, i32 %205)
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %14, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %200
  %210 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %211 = load i32, i32* %14, align 4
  %212 = call i32 @mthca_warn(%struct.mthca_dev* %210, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %211)
  br label %280

213:                                              ; preds = %200
  %214 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %215 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 2
  %217 = call i32 @spin_lock_irq(i32* %216)
  %218 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %219 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 3
  %221 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %222 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %225 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = sub nsw i32 %227, 1
  %229 = and i32 %223, %228
  %230 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %231 = call i64 @mthca_array_set(i32* %220, i32 %229, %struct.mthca_srq* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %213
  %234 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %235 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 2
  %237 = call i32 @spin_unlock_irq(i32* %236)
  br label %266

238:                                              ; preds = %213
  %239 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %240 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 2
  %242 = call i32 @spin_unlock_irq(i32* %241)
  %243 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %244 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %245 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %243, %struct.mthca_mailbox* %244)
  %246 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %247 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %246, i32 0, i32 6
  store i64 0, i64* %247, align 8
  %248 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %249 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = sub nsw i64 %250, 1
  %252 = trunc i64 %251 to i32
  %253 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %254 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %253, i32 0, i32 5
  store i32 %252, i32* %254, align 4
  %255 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %256 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = sub nsw i64 %257, 1
  %259 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %9, align 8
  %260 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %259, i32 0, i32 0
  store i64 %258, i64* %260, align 8
  %261 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %262 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %9, align 8
  %265 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %264, i32 0, i32 1
  store i32 %263, i32* %265, align 8
  store i32 0, i32* %6, align 4
  br label %326

266:                                              ; preds = %233
  %267 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %268 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %269 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %270 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @mthca_HW2SW_SRQ(%struct.mthca_dev* %267, %struct.mthca_mailbox* %268, i32 %271)
  store i32 %272, i32* %14, align 4
  %273 = load i32, i32* %14, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %266
  %276 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %277 = load i32, i32* %14, align 4
  %278 = call i32 @mthca_warn(%struct.mthca_dev* %276, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %277)
  br label %279

279:                                              ; preds = %275, %266
  br label %280

280:                                              ; preds = %279, %209
  %281 = load %struct.ib_udata*, %struct.ib_udata** %11, align 8
  %282 = icmp ne %struct.ib_udata* %281, null
  br i1 %282, label %287, label %283

283:                                              ; preds = %280
  %284 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %285 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %286 = call i32 @mthca_free_srq_buf(%struct.mthca_dev* %284, %struct.mthca_srq* %285)
  br label %287

287:                                              ; preds = %283, %280
  br label %288

288:                                              ; preds = %287, %166
  %289 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %290 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %291 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %289, %struct.mthca_mailbox* %290)
  br label %292

292:                                              ; preds = %288, %155
  %293 = load %struct.ib_udata*, %struct.ib_udata** %11, align 8
  %294 = icmp ne %struct.ib_udata* %293, null
  br i1 %294, label %306, label %295

295:                                              ; preds = %292
  %296 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %297 = call i64 @mthca_is_memfree(%struct.mthca_dev* %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %295
  %300 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %301 = load i32, i32* @MTHCA_DB_TYPE_SRQ, align 4
  %302 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %303 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = call i32 @mthca_free_db(%struct.mthca_dev* %300, i32 %301, i64 %304)
  br label %306

306:                                              ; preds = %299, %295, %292
  br label %307

307:                                              ; preds = %306, %143
  %308 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %309 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %310 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %314 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @mthca_table_put(%struct.mthca_dev* %308, i32 %312, i32 %315)
  br label %317

317:                                              ; preds = %307, %124
  %318 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %319 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %322 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @mthca_free(i32* %320, i32 %323)
  %325 = load i32, i32* %14, align 4
  store i32 %325, i32* %6, align 4
  br label %326

326:                                              ; preds = %317, %238, %105, %87, %32
  %327 = load i32, i32* %6, align 4
  ret i32 %327
}

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i64 @roundup_pow_of_two(i32) #1

declare dso_local i32 @max(i64, i64) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @mthca_alloc(i32*) #1

declare dso_local i32 @mthca_table_get(%struct.mthca_dev*, i32, i32) #1

declare dso_local i64 @mthca_alloc_db(%struct.mthca_dev*, i32, i32, i32*) #1

declare dso_local %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @mthca_alloc_srq_buf(%struct.mthca_dev*, %struct.mthca_pd*, %struct.mthca_srq*, %struct.ib_udata*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mthca_arbel_init_srq_context(%struct.mthca_dev*, %struct.mthca_pd*, %struct.mthca_srq*, i32, %struct.ib_udata*) #1

declare dso_local i32 @mthca_tavor_init_srq_context(%struct.mthca_dev*, %struct.mthca_pd*, %struct.mthca_srq*, i32, %struct.ib_udata*) #1

declare dso_local i32 @mthca_SW2HW_SRQ(%struct.mthca_dev*, %struct.mthca_mailbox*, i32) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @mthca_array_set(i32*, i32, %struct.mthca_srq*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mthca_free_mailbox(%struct.mthca_dev*, %struct.mthca_mailbox*) #1

declare dso_local i32 @mthca_HW2SW_SRQ(%struct.mthca_dev*, %struct.mthca_mailbox*, i32) #1

declare dso_local i32 @mthca_free_srq_buf(%struct.mthca_dev*, %struct.mthca_srq*) #1

declare dso_local i32 @mthca_free_db(%struct.mthca_dev*, i32, i64) #1

declare dso_local i32 @mthca_table_put(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @mthca_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
