; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_array_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_array_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i64, i32, i32, i32, i32, i64, i32, i32 }

@array_states = common dso_local global i32 0, align 4
@MD_SB_CHANGE_PENDING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UNTIL_IOCTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i8*, i64)* @array_state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @array_state_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* @array_states, align 4
  %12 = call i32 @match_word(i8* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.mddev*, %struct.mddev** %5, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %78

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 138
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 134
  br i1 %22, label %23, label %78

23:                                               ; preds = %20, %17
  %24 = load %struct.mddev*, %struct.mddev** %5, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %78

28:                                               ; preds = %23
  %29 = load %struct.mddev*, %struct.mddev** %5, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 7
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 138
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.mddev*, %struct.mddev** %5, align 8
  %36 = call i32 @restart_array(%struct.mddev* %35)
  %37 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %38 = load %struct.mddev*, %struct.mddev** %5, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 5
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  %41 = load %struct.mddev*, %struct.mddev** %5, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @md_wakeup_thread(i32 %43)
  %45 = load %struct.mddev*, %struct.mddev** %5, align 8
  %46 = getelementptr inbounds %struct.mddev, %struct.mddev* %45, i32 0, i32 4
  %47 = call i32 @wake_up(i32* %46)
  br label %58

48:                                               ; preds = %28
  %49 = load %struct.mddev*, %struct.mddev** %5, align 8
  %50 = call i32 @restart_array(%struct.mddev* %49)
  %51 = load %struct.mddev*, %struct.mddev** %5, align 8
  %52 = call i32 @set_in_sync(%struct.mddev* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %48
  br label %58

58:                                               ; preds = %57, %34
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load %struct.mddev*, %struct.mddev** %5, align 8
  %63 = getelementptr inbounds %struct.mddev, %struct.mddev* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @sysfs_notify_dirent_safe(i32 %64)
  br label %66

66:                                               ; preds = %61, %58
  %67 = load %struct.mddev*, %struct.mddev** %5, align 8
  %68 = getelementptr inbounds %struct.mddev, %struct.mddev* %67, i32 0, i32 7
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = sext i32 %70 to i64
  br label %76

74:                                               ; preds = %66
  %75 = load i64, i64* %7, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i64 [ %73, %72 ], [ %75, %74 ]
  store i64 %77, i64* %4, align 8
  br label %249

78:                                               ; preds = %23, %20, %3
  %79 = load %struct.mddev*, %struct.mddev** %5, align 8
  %80 = call i32 @mddev_lock(%struct.mddev* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %4, align 8
  br label %249

86:                                               ; preds = %78
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  switch i32 %89, label %221 [
    i32 136, label %90
    i32 133, label %91
    i32 132, label %94
    i32 129, label %104
    i32 130, label %105
    i32 131, label %123
    i32 134, label %162
    i32 138, label %191
    i32 128, label %220
    i32 137, label %220
    i32 135, label %220
  ]

90:                                               ; preds = %86
  br label %221

91:                                               ; preds = %86
  %92 = load %struct.mddev*, %struct.mddev** %5, align 8
  %93 = call i32 @do_md_stop(%struct.mddev* %92, i32 0, i32* null)
  store i32 %93, i32* %8, align 4
  br label %221

94:                                               ; preds = %86
  %95 = load %struct.mddev*, %struct.mddev** %5, align 8
  %96 = getelementptr inbounds %struct.mddev, %struct.mddev* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.mddev*, %struct.mddev** %5, align 8
  %101 = call i32 @do_md_stop(%struct.mddev* %100, i32 2, i32* null)
  store i32 %101, i32* %8, align 4
  br label %103

102:                                              ; preds = %94
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %102, %99
  br label %221

104:                                              ; preds = %86
  br label %221

105:                                              ; preds = %86
  %106 = load %struct.mddev*, %struct.mddev** %5, align 8
  %107 = getelementptr inbounds %struct.mddev, %struct.mddev* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.mddev*, %struct.mddev** %5, align 8
  %112 = call i32 @md_set_readonly(%struct.mddev* %111, i32* null)
  store i32 %112, i32* %8, align 4
  br label %122

113:                                              ; preds = %105
  %114 = load %struct.mddev*, %struct.mddev** %5, align 8
  %115 = getelementptr inbounds %struct.mddev, %struct.mddev* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  %116 = load %struct.mddev*, %struct.mddev** %5, align 8
  %117 = getelementptr inbounds %struct.mddev, %struct.mddev* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @set_disk_ro(i32 %118, i32 1)
  %120 = load %struct.mddev*, %struct.mddev** %5, align 8
  %121 = call i32 @do_md_run(%struct.mddev* %120)
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %113, %110
  br label %221

123:                                              ; preds = %86
  %124 = load %struct.mddev*, %struct.mddev** %5, align 8
  %125 = getelementptr inbounds %struct.mddev, %struct.mddev* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %156

128:                                              ; preds = %123
  %129 = load %struct.mddev*, %struct.mddev** %5, align 8
  %130 = getelementptr inbounds %struct.mddev, %struct.mddev* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.mddev*, %struct.mddev** %5, align 8
  %135 = call i32 @md_set_readonly(%struct.mddev* %134, i32* null)
  store i32 %135, i32* %8, align 4
  br label %145

136:                                              ; preds = %128
  %137 = load %struct.mddev*, %struct.mddev** %5, align 8
  %138 = getelementptr inbounds %struct.mddev, %struct.mddev* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.mddev*, %struct.mddev** %5, align 8
  %143 = call i32 @restart_array(%struct.mddev* %142)
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %141, %136
  br label %145

145:                                              ; preds = %144, %133
  %146 = load i32, i32* %8, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load %struct.mddev*, %struct.mddev** %5, align 8
  %150 = getelementptr inbounds %struct.mddev, %struct.mddev* %149, i32 0, i32 0
  store i32 2, i32* %150, align 8
  %151 = load %struct.mddev*, %struct.mddev** %5, align 8
  %152 = getelementptr inbounds %struct.mddev, %struct.mddev* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @set_disk_ro(i32 %153, i32 0)
  br label %155

155:                                              ; preds = %148, %145
  br label %161

156:                                              ; preds = %123
  %157 = load %struct.mddev*, %struct.mddev** %5, align 8
  %158 = getelementptr inbounds %struct.mddev, %struct.mddev* %157, i32 0, i32 0
  store i32 2, i32* %158, align 8
  %159 = load %struct.mddev*, %struct.mddev** %5, align 8
  %160 = call i32 @do_md_run(%struct.mddev* %159)
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %156, %155
  br label %221

162:                                              ; preds = %86
  %163 = load %struct.mddev*, %struct.mddev** %5, align 8
  %164 = getelementptr inbounds %struct.mddev, %struct.mddev* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %187

167:                                              ; preds = %162
  %168 = load %struct.mddev*, %struct.mddev** %5, align 8
  %169 = call i32 @restart_array(%struct.mddev* %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %221

173:                                              ; preds = %167
  %174 = load %struct.mddev*, %struct.mddev** %5, align 8
  %175 = getelementptr inbounds %struct.mddev, %struct.mddev* %174, i32 0, i32 7
  %176 = call i32 @spin_lock(i32* %175)
  %177 = load %struct.mddev*, %struct.mddev** %5, align 8
  %178 = call i32 @set_in_sync(%struct.mddev* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %173
  %181 = load i32, i32* @EBUSY, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %180, %173
  %184 = load %struct.mddev*, %struct.mddev** %5, align 8
  %185 = getelementptr inbounds %struct.mddev, %struct.mddev* %184, i32 0, i32 7
  %186 = call i32 @spin_unlock(i32* %185)
  br label %190

187:                                              ; preds = %162
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %8, align 4
  br label %190

190:                                              ; preds = %187, %183
  br label %221

191:                                              ; preds = %86
  %192 = load %struct.mddev*, %struct.mddev** %5, align 8
  %193 = getelementptr inbounds %struct.mddev, %struct.mddev* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %191
  %197 = load %struct.mddev*, %struct.mddev** %5, align 8
  %198 = call i32 @restart_array(%struct.mddev* %197)
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %221

202:                                              ; preds = %196
  %203 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %204 = load %struct.mddev*, %struct.mddev** %5, align 8
  %205 = getelementptr inbounds %struct.mddev, %struct.mddev* %204, i32 0, i32 5
  %206 = call i32 @clear_bit(i32 %203, i32* %205)
  %207 = load %struct.mddev*, %struct.mddev** %5, align 8
  %208 = getelementptr inbounds %struct.mddev, %struct.mddev* %207, i32 0, i32 4
  %209 = call i32 @wake_up(i32* %208)
  store i32 0, i32* %8, align 4
  br label %219

210:                                              ; preds = %191
  %211 = load %struct.mddev*, %struct.mddev** %5, align 8
  %212 = getelementptr inbounds %struct.mddev, %struct.mddev* %211, i32 0, i32 0
  store i32 0, i32* %212, align 8
  %213 = load %struct.mddev*, %struct.mddev** %5, align 8
  %214 = getelementptr inbounds %struct.mddev, %struct.mddev* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @set_disk_ro(i32 %215, i32 0)
  %217 = load %struct.mddev*, %struct.mddev** %5, align 8
  %218 = call i32 @do_md_run(%struct.mddev* %217)
  store i32 %218, i32* %8, align 4
  br label %219

219:                                              ; preds = %210, %202
  br label %221

220:                                              ; preds = %86, %86, %86
  br label %221

221:                                              ; preds = %86, %220, %219, %201, %190, %172, %161, %122, %104, %103, %91, %90
  %222 = load i32, i32* %8, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %238, label %224

224:                                              ; preds = %221
  %225 = load %struct.mddev*, %struct.mddev** %5, align 8
  %226 = getelementptr inbounds %struct.mddev, %struct.mddev* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @UNTIL_IOCTL, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %224
  %231 = load %struct.mddev*, %struct.mddev** %5, align 8
  %232 = getelementptr inbounds %struct.mddev, %struct.mddev* %231, i32 0, i32 1
  store i64 0, i64* %232, align 8
  br label %233

233:                                              ; preds = %230, %224
  %234 = load %struct.mddev*, %struct.mddev** %5, align 8
  %235 = getelementptr inbounds %struct.mddev, %struct.mddev* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @sysfs_notify_dirent_safe(i32 %236)
  br label %238

238:                                              ; preds = %233, %221
  %239 = load %struct.mddev*, %struct.mddev** %5, align 8
  %240 = call i32 @mddev_unlock(%struct.mddev* %239)
  %241 = load i32, i32* %8, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = sext i32 %241 to i64
  br label %247

245:                                              ; preds = %238
  %246 = load i64, i64* %7, align 8
  br label %247

247:                                              ; preds = %245, %243
  %248 = phi i64 [ %244, %243 ], [ %246, %245 ]
  store i64 %248, i64* %4, align 8
  br label %249

249:                                              ; preds = %247, %83, %76
  %250 = load i64, i64* %4, align 8
  ret i64 %250
}

declare dso_local i32 @match_word(i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @restart_array(%struct.mddev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @set_in_sync(%struct.mddev*) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mddev_lock(%struct.mddev*) #1

declare dso_local i32 @do_md_stop(%struct.mddev*, i32, i32*) #1

declare dso_local i32 @md_set_readonly(%struct.mddev*, i32*) #1

declare dso_local i32 @set_disk_ro(i32, i32) #1

declare dso_local i32 @do_md_run(%struct.mddev*) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
