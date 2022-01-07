; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_init_hem_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_init_hem_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hns_roce_hem_table = type { i64, i64, i64, i64, i32, i32*, i32*, i32*, i32*, i32, i64, i8* }
%struct.hns_roce_hem_mhop = type { i64, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BA_BYTE_LEN = common dso_local global i64 0, align 8
@HEM_TYPE_MTT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_init_hem_table(%struct.hns_roce_dev* %0, %struct.hns_roce_hem_table* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hns_roce_dev*, align 8
  %9 = alloca %struct.hns_roce_hem_table*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.hns_roce_hem_mhop, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %8, align 8
  store %struct.hns_roce_hem_table* %1, %struct.hns_roce_hem_table** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %23, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %59, label %27

27:                                               ; preds = %6
  %28 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %29 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %33 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %35 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = udiv i64 %36, %37
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %14, align 8
  %41 = add i64 %39, %40
  %42 = sub i64 %41, 1
  %43 = load i64, i64* %14, align 8
  %44 = udiv i64 %42, %43
  store i64 %44, i64* %15, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kcalloc(i64 %45, i32 4, i32 %46)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %50 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %49, i32 0, i32 5
  store i32* %48, i32** %50, align 8
  %51 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %52 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %27
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %227

58:                                               ; preds = %27
  br label %177

59:                                               ; preds = %6
  %60 = bitcast %struct.hns_roce_hem_mhop* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %60, i8 0, i64 32, i1 false)
  store i64 0, i64* %20, align 8
  %61 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i64 @get_hem_table_config(%struct.hns_roce_dev* %61, %struct.hns_roce_hem_mhop* %16, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %227

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %16, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %17, align 8
  %71 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %16, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %18, align 8
  %73 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %16, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %20, align 8
  %75 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %16, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %21, align 8
  %77 = load i64, i64* %17, align 8
  %78 = load i64, i64* %11, align 8
  %79 = udiv i64 %77, %78
  store i64 %79, i64* %14, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %14, align 8
  %82 = add i64 %80, %81
  %83 = sub i64 %82, 1
  %84 = load i64, i64* %14, align 8
  %85 = udiv i64 %83, %84
  store i64 %85, i64* %15, align 8
  %86 = load i64, i64* %18, align 8
  %87 = load i64, i64* @BA_BYTE_LEN, align 8
  %88 = udiv i64 %86, %87
  store i64 %88, i64* %19, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @HEM_TYPE_MTT, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %68
  %93 = load i64, i64* %19, align 8
  store i64 %93, i64* %20, align 8
  br label %94

94:                                               ; preds = %92, %68
  %95 = load i64, i64* %15, align 8
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call i8* @kcalloc(i64 %95, i32 4, i32 %96)
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %100 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %99, i32 0, i32 5
  store i32* %98, i32** %100, align 8
  %101 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %102 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %101, i32 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %94
  br label %224

106:                                              ; preds = %94
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* %21, align 8
  %109 = call i64 @check_whether_bt_num_3(i64 %107, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %142

111:                                              ; preds = %106
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* %19, align 8
  %114 = add i64 %112, %113
  %115 = sub i64 %114, 1
  %116 = load i64, i64* %19, align 8
  %117 = udiv i64 %115, %116
  store i64 %117, i64* %22, align 8
  %118 = load i64, i64* %22, align 8
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call i8* @kcalloc(i64 %118, i32 4, i32 %119)
  %121 = bitcast i8* %120 to i32*
  %122 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %123 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %122, i32 0, i32 6
  store i32* %121, i32** %123, align 8
  %124 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %125 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %124, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %111
  br label %217

129:                                              ; preds = %111
  %130 = load i64, i64* %22, align 8
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = call i8* @kcalloc(i64 %130, i32 4, i32 %131)
  %133 = bitcast i8* %132 to i32*
  %134 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %135 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %134, i32 0, i32 7
  store i32* %133, i32** %135, align 8
  %136 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %137 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %136, i32 0, i32 7
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %129
  br label %210

141:                                              ; preds = %129
  br label %142

142:                                              ; preds = %141, %106
  %143 = load i64, i64* %10, align 8
  %144 = load i64, i64* %21, align 8
  %145 = call i64 @check_whether_bt_num_2(i64 %143, i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %142
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* %21, align 8
  %150 = call i64 @check_whether_bt_num_3(i64 %148, i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %176

152:                                              ; preds = %147, %142
  %153 = load i64, i64* %20, align 8
  %154 = load i32, i32* @GFP_KERNEL, align 4
  %155 = call i8* @kcalloc(i64 %153, i32 4, i32 %154)
  %156 = bitcast i8* %155 to i32*
  %157 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %158 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %157, i32 0, i32 8
  store i32* %156, i32** %158, align 8
  %159 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %160 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %159, i32 0, i32 8
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %152
  br label %203

164:                                              ; preds = %152
  %165 = load i64, i64* %20, align 8
  %166 = load i32, i32* @GFP_KERNEL, align 4
  %167 = call i8* @kcalloc(i64 %165, i32 1, i32 %166)
  %168 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %169 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %168, i32 0, i32 11
  store i8* %167, i8** %169, align 8
  %170 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %171 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %170, i32 0, i32 11
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %164
  br label %196

175:                                              ; preds = %164
  br label %176

176:                                              ; preds = %175, %147
  br label %177

177:                                              ; preds = %176, %58
  %178 = load i64, i64* %10, align 8
  %179 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %180 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %179, i32 0, i32 10
  store i64 %178, i64* %180, align 8
  %181 = load i64, i64* %15, align 8
  %182 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %183 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %182, i32 0, i32 1
  store i64 %181, i64* %183, align 8
  %184 = load i64, i64* %12, align 8
  %185 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %186 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %185, i32 0, i32 2
  store i64 %184, i64* %186, align 8
  %187 = load i64, i64* %11, align 8
  %188 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %189 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %188, i32 0, i32 3
  store i64 %187, i64* %189, align 8
  %190 = load i32, i32* %13, align 4
  %191 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %192 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %191, i32 0, i32 4
  store i32 %190, i32* %192, align 8
  %193 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %194 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %193, i32 0, i32 9
  %195 = call i32 @mutex_init(i32* %194)
  store i32 0, i32* %7, align 4
  br label %227

196:                                              ; preds = %174
  %197 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %198 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %197, i32 0, i32 8
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @kfree(i32* %199)
  %201 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %202 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %201, i32 0, i32 8
  store i32* null, i32** %202, align 8
  br label %203

203:                                              ; preds = %196, %163
  %204 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %205 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %204, i32 0, i32 7
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @kfree(i32* %206)
  %208 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %209 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %208, i32 0, i32 7
  store i32* null, i32** %209, align 8
  br label %210

210:                                              ; preds = %203, %140
  %211 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %212 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %211, i32 0, i32 6
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @kfree(i32* %213)
  %215 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %216 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %215, i32 0, i32 6
  store i32* null, i32** %216, align 8
  br label %217

217:                                              ; preds = %210, %128
  %218 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %219 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %218, i32 0, i32 5
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @kfree(i32* %220)
  %222 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %9, align 8
  %223 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %222, i32 0, i32 5
  store i32* null, i32** %223, align 8
  br label %224

224:                                              ; preds = %217, %105
  %225 = load i32, i32* @ENOMEM, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %7, align 4
  br label %227

227:                                              ; preds = %224, %177, %65, %55
  %228 = load i32, i32* %7, align 4
  ret i32 %228
}

declare dso_local i32 @hns_roce_check_whether_mhop(%struct.hns_roce_dev*, i64) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @get_hem_table_config(%struct.hns_roce_dev*, %struct.hns_roce_hem_mhop*, i64) #1

declare dso_local i64 @check_whether_bt_num_3(i64, i64) #1

declare dso_local i64 @check_whether_bt_num_2(i64, i64) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
