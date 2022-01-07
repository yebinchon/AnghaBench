; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stripe.c_stripe_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stripe.c_stripe_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, i32, i32, i32, i32, %struct.stripe_c*, i32 }
%struct.stripe_c = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.dm_target*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Not enough arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid stripe count\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid chunk_size\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Target length not divisible by number of stripes\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Target length not divisible by chunk size\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Not enough destinations specified\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Memory allocation for striped context failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@trigger_event = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Couldn't parse stripe destination\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @stripe_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.stripe_c*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %19 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %219

22:                                               ; preds = %3
  %23 = load i8**, i8*** %7, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @kstrtouint(i8* %25, i32 10, i32* %11)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %33 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %219

36:                                               ; preds = %28
  %37 = load i8**, i8*** %7, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @kstrtouint(i8* %39, i32 10, i32* %12)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %47 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %47, align 8
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %219

50:                                               ; preds = %42
  %51 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %52 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @sector_div(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %60 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8** %60, align 8
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %219

63:                                               ; preds = %50
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @sector_div(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %71 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8** %71, align 8
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %219

74:                                               ; preds = %63
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %11, align 4
  %77 = mul nsw i32 2, %76
  %78 = add nsw i32 2, %77
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %82 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8** %82, align 8
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %219

85:                                               ; preds = %74
  %86 = load i32, i32* %11, align 4
  %87 = call %struct.stripe_c* @alloc_context(i32 %86)
  store %struct.stripe_c* %87, %struct.stripe_c** %8, align 8
  %88 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %89 = icmp ne %struct.stripe_c* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %92 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %91, i32 0, i32 0
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8** %92, align 8
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %219

95:                                               ; preds = %85
  %96 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %97 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %96, i32 0, i32 7
  %98 = load i32, i32* @trigger_event, align 4
  %99 = call i32 @INIT_WORK(i32* %97, i32 %98)
  %100 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %101 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %102 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %101, i32 0, i32 6
  store %struct.dm_target* %100, %struct.dm_target** %102, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %105 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %108 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = sub nsw i32 %110, 1
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %95
  %115 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %116 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %115, i32 0, i32 1
  store i32 -1, i32* %116, align 4
  br label %123

117:                                              ; preds = %95
  %118 = load i32, i32* %11, align 4
  %119 = call i8* @__ffs(i32 %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %122 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %117, %114
  %124 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @dm_set_target_max_io_len(%struct.dm_target* %124, i32 %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %131 = call i32 @kfree(%struct.stripe_c* %130)
  %132 = load i32, i32* %13, align 4
  store i32 %132, i32* %4, align 4
  br label %219

133:                                              ; preds = %123
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %136 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %139 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %142 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %145 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %148 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %151 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = sub nsw i32 %153, 1
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %133
  %158 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %159 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %158, i32 0, i32 3
  store i32 -1, i32* %159, align 4
  br label %166

160:                                              ; preds = %133
  %161 = load i32, i32* %12, align 4
  %162 = call i8* @__ffs(i32 %161)
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %165 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %160, %157
  store i32 0, i32* %14, align 4
  br label %167

167:                                              ; preds = %212, %166
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp ult i32 %168, %169
  br i1 %170, label %171, label %215

171:                                              ; preds = %167
  %172 = load i8**, i8*** %7, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 2
  store i8** %173, i8*** %7, align 8
  %174 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %175 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %176 = load i32, i32* %14, align 4
  %177 = load i8**, i8*** %7, align 8
  %178 = call i32 @get_stripe(%struct.dm_target* %174, %struct.stripe_c* %175, i32 %176, i8** %177)
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %13, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %203

181:                                              ; preds = %171
  %182 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %183 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %182, i32 0, i32 0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8** %183, align 8
  br label %184

184:                                              ; preds = %188, %181
  %185 = load i32, i32* %14, align 4
  %186 = add i32 %185, -1
  store i32 %186, i32* %14, align 4
  %187 = icmp ne i32 %185, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %184
  %189 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %190 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %191 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %190, i32 0, i32 4
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = load i32, i32* %14, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @dm_put_device(%struct.dm_target* %189, i32 %197)
  br label %184

199:                                              ; preds = %184
  %200 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %201 = call i32 @kfree(%struct.stripe_c* %200)
  %202 = load i32, i32* %13, align 4
  store i32 %202, i32* %4, align 4
  br label %219

203:                                              ; preds = %171
  %204 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %205 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %204, i32 0, i32 4
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = load i32, i32* %14, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = call i32 @atomic_set(i32* %210, i32 0)
  br label %212

212:                                              ; preds = %203
  %213 = load i32, i32* %14, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %14, align 4
  br label %167

215:                                              ; preds = %167
  %216 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %217 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %218 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %217, i32 0, i32 6
  store %struct.stripe_c* %216, %struct.stripe_c** %218, align 8
  store i32 0, i32* %4, align 4
  br label %219

219:                                              ; preds = %215, %199, %129, %90, %80, %69, %58, %45, %31, %17
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i64 @sector_div(i32, i32) #1

declare dso_local %struct.stripe_c* @alloc_context(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i8* @__ffs(i32) #1

declare dso_local i32 @dm_set_target_max_io_len(%struct.dm_target*, i32) #1

declare dso_local i32 @kfree(%struct.stripe_c*) #1

declare dso_local i32 @get_stripe(%struct.dm_target*, %struct.stripe_c*, i32, i8**) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
