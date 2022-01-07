; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_of_update_msc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_of_update_msc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.property = type { i32, i64 }
%struct.nx_of = type { i32, %struct.TYPE_2__*** }
%struct.TYPE_2__ = type { i64, i64 }
%struct.msc_triplet = type { i64, i64, i32 }
%struct.max_sync_cop = type { i32, i64, i64, %struct.msc_triplet* }

@NX_MAX_FC = common dso_local global i64 0, align 8
@NX_MAX_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"unknown function code/mode combo: %d/%d (ignored)\0A\00", align 1
@NX_PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"bogus sglen/databytelen: %u/%u (ignored)\0A\00", align 1
@NX_FC_AES = common dso_local global i64 0, align 8
@NX_FC_AES_HMAC = common dso_local global i64 0, align 8
@NX_FC_SHA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"unknown function code/key bit len combo: (%u/256)\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"unknown function code/key bit len combo: (%u/%u)\0A\00", align 1
@NX_OF_FLAG_MAXSYNCCOP_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.property*, %struct.nx_of*)* @nx_of_update_msc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nx_of_update_msc(%struct.device* %0, %struct.property* %1, %struct.nx_of* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca %struct.nx_of*, align 8
  %7 = alloca %struct.msc_triplet*, align 8
  %8 = alloca %struct.max_sync_cop*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.property* %1, %struct.property** %5, align 8
  store %struct.nx_of* %2, %struct.nx_of** %6, align 8
  %12 = load %struct.property*, %struct.property** %5, align 8
  %13 = getelementptr inbounds %struct.property, %struct.property* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.max_sync_cop*
  store %struct.max_sync_cop* %15, %struct.max_sync_cop** %8, align 8
  %16 = load %struct.property*, %struct.property** %5, align 8
  %17 = getelementptr inbounds %struct.property, %struct.property* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %325, %3
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = add i64 %21, 32
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp ule i64 %22, %24
  br i1 %25, label %26, label %328

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = add i64 %28, 32
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %32 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %31, i32 0, i32 3
  %33 = load %struct.msc_triplet*, %struct.msc_triplet** %32, align 8
  store %struct.msc_triplet* %33, %struct.msc_triplet** %7, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %322, %26
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = add i64 %36, 24
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = icmp ule i64 %37, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %44 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %42, %45
  br label %47

47:                                               ; preds = %41, %34
  %48 = phi i1 [ false, %34 ], [ %46, %41 ]
  br i1 %48, label %49, label %325

49:                                               ; preds = %47
  %50 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %51 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NX_MAX_FC, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %57 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NX_MAX_MODE, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55, %49
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %64 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %67 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %65, i64 %68)
  br label %315

70:                                               ; preds = %55
  %71 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %72 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %77 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NX_PAGE_SIZE, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75, %70
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %84 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %87 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (%struct.device*, i8*, i64, ...) @dev_warn(%struct.device* %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %85, i64 %88)
  br label %315

90:                                               ; preds = %75
  %91 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %92 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %305 [
    i32 128, label %94
    i32 160, label %94
    i32 192, label %131
    i32 256, label %168
    i32 512, label %268
  ]

94:                                               ; preds = %90, %90
  %95 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %96 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %99 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %99, align 8
  %101 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %102 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %100, i64 %103
  %105 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %104, align 8
  %106 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %107 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %105, i64 %108
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i64 %97, i64* %112, align 8
  %113 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %114 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %117 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %117, align 8
  %119 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %120 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %118, i64 %121
  %123 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %122, align 8
  %124 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %125 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %123, i64 %126
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  store i64 %115, i64* %130, align 8
  br label %314

131:                                              ; preds = %90
  %132 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %133 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %136 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %135, i32 0, i32 1
  %137 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %136, align 8
  %138 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %139 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %137, i64 %140
  %142 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %141, align 8
  %143 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %144 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %142, i64 %145
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  store i64 %134, i64* %149, align 8
  %150 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %151 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %154 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %153, i32 0, i32 1
  %155 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %154, align 8
  %156 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %157 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %155, i64 %158
  %160 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %159, align 8
  %161 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %162 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %160, i64 %163
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 1
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  store i64 %152, i64* %167, align 8
  br label %314

168:                                              ; preds = %90
  %169 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %170 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @NX_FC_AES, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %211

174:                                              ; preds = %168
  %175 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %176 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %179 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %178, i32 0, i32 1
  %180 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %179, align 8
  %181 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %182 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %180, i64 %183
  %185 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %184, align 8
  %186 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %187 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %185, i64 %188
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 2
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  store i64 %177, i64* %192, align 8
  %193 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %194 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %197 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %196, i32 0, i32 1
  %198 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %197, align 8
  %199 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %200 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %198, i64 %201
  %203 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %202, align 8
  %204 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %205 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %203, i64 %206
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i64 2
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  store i64 %195, i64* %210, align 8
  br label %267

211:                                              ; preds = %168
  %212 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %213 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @NX_FC_AES_HMAC, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %223, label %217

217:                                              ; preds = %211
  %218 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %219 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @NX_FC_SHA, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %260

223:                                              ; preds = %217, %211
  %224 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %225 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %228 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %227, i32 0, i32 1
  %229 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %228, align 8
  %230 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %231 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %229, i64 %232
  %234 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %233, align 8
  %235 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %236 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %234, i64 %237
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i64 1
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  store i64 %226, i64* %241, align 8
  %242 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %243 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %246 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %245, i32 0, i32 1
  %247 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %246, align 8
  %248 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %249 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %247, i64 %250
  %252 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %251, align 8
  %253 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %254 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %252, i64 %255
  %257 = load %struct.TYPE_2__*, %struct.TYPE_2__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i64 1
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 1
  store i64 %244, i64* %259, align 8
  br label %266

260:                                              ; preds = %217
  %261 = load %struct.device*, %struct.device** %4, align 8
  %262 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %263 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = call i32 (%struct.device*, i8*, i64, ...) @dev_warn(%struct.device* %261, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %264)
  br label %266

266:                                              ; preds = %260, %223
  br label %267

267:                                              ; preds = %266, %174
  br label %314

268:                                              ; preds = %90
  %269 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %270 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %273 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %272, i32 0, i32 1
  %274 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %273, align 8
  %275 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %276 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %274, i64 %277
  %279 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %278, align 8
  %280 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %281 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %279, i64 %282
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i64 2
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  store i64 %271, i64* %286, align 8
  %287 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %288 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %291 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %290, i32 0, i32 1
  %292 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %291, align 8
  %293 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %294 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %292, i64 %295
  %297 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %296, align 8
  %298 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %299 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %297, i64 %300
  %302 = load %struct.TYPE_2__*, %struct.TYPE_2__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i64 2
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 1
  store i64 %289, i64* %304, align 8
  br label %314

305:                                              ; preds = %90
  %306 = load %struct.device*, %struct.device** %4, align 8
  %307 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %308 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %311 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = call i32 (%struct.device*, i8*, i64, ...) @dev_warn(%struct.device* %306, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %309, i32 %312)
  br label %314

314:                                              ; preds = %305, %268, %267, %131, %94
  br label %315

315:                                              ; preds = %314, %81, %61
  %316 = load i32, i32* %9, align 4
  %317 = zext i32 %316 to i64
  %318 = add i64 %317, 24
  %319 = trunc i64 %318 to i32
  store i32 %319, i32* %9, align 4
  %320 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %321 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %320, i32 1
  store %struct.msc_triplet* %321, %struct.msc_triplet** %7, align 8
  br label %322

322:                                              ; preds = %315
  %323 = load i32, i32* %10, align 4
  %324 = add i32 %323, 1
  store i32 %324, i32* %10, align 4
  br label %34

325:                                              ; preds = %47
  %326 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %327 = bitcast %struct.msc_triplet* %326 to %struct.max_sync_cop*
  store %struct.max_sync_cop* %327, %struct.max_sync_cop** %8, align 8
  br label %19

328:                                              ; preds = %19
  %329 = load i32, i32* @NX_OF_FLAG_MAXSYNCCOP_SET, align 4
  %330 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %331 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = or i32 %332, %329
  store i32 %333, i32* %331, align 8
  ret void
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
